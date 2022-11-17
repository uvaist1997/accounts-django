import json
from django.core.exceptions import ObjectDoesNotExist
from django.http.response import HttpResponse
from django.shortcuts import get_object_or_404, redirect
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.renderers import JSONRenderer
from main.models import BusinessType, CompanySettings, Country, Customer, UserTable,State
from users import models
from . import serialization
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes, renderer_classes, authentication_classes
from rest_framework import status
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from main.functions import generate_serializer_errors, get_company, getBaseUrl
import requests
from django.conf import settings
from rest_framework_jwt.settings import api_settings as jwt_settings
import datetime
import os
from os import access, path
import sys
from django.utils.encoding import smart_str
from django.http import FileResponse, HttpResponseRedirect
from rest_framework_simplejwt.tokens import RefreshToken
import mimetypes
from rest_framework_simplejwt.authentication import JWTTokenUserAuthentication
from datetime import date


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def get_company_details(request):
    try:
        userId = request.data["userId"]
    except:
        userId = request.user.id
    
    Company = get_company(request.data["CompanyID"])
    if Company:
        serialized = serialization.CompanySettingsRestSerializer(
            Company,
            many=False,
            context={"request": request, "userId": userId},
        )
        response_data = {
            "data": {
                **serialized.data,
            },
            "StatusCode": 6000,
            "message": "success",
        }
    else:
        response_data = {"StatusCode": 6001, "message": "company not found"}

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["GET"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def business_types(request):
    instances = None
    if BusinessType.objects.all().exists():
        instances = BusinessType.objects.all()
        serializer = serialization.BusinessTypeSerializer(instances, many=True)
        response_data = {"StatusCode": 6000, "data": serializer.data}

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        response_data = {"StatusCode": 6001,
                         "message": "Business Type Not Found"}
        return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def companies(request):
    try:
        userId = request.data["userId"]
    except:
        userId = request.user.id
    try:
        is_mobile = request.data["is_mobile"]
    except:
        is_mobile = False

    userId = get_object_or_404(User.objects.filter(id=userId))
    my_company_instances = CompanySettings.objects.filter(
        owner=userId, is_deleted=False
    )
    my_company_serialized = serialization.MyCompaniesSerializer(
        my_company_instances, many=True, context={"request": request}
    )

    if is_mobile == True:
        member_company_instances = UserTable.objects.filter(
            customer__user=userId, is_mobile=True, CompanyID__is_deleted=False
        )
    else:
        member_company_instances = UserTable.objects.filter(
            customer__user=userId, is_web=True, CompanyID__is_deleted=False
        )

    member_company_serialized = serialization.CompaniesSerializer(
        member_company_instances, many=True, context={"request": request}
    )
    LastLoginCompanyID = ""
    if Customer.objects.filter(user=userId).exists():
        customer_ins = Customer.objects.filter(user=userId).first()
        if customer_ins.LastLoginCompanyID:
            LastLoginCompanyID = customer_ins.LastLoginCompanyID.id

    data = []
    for i in my_company_serialized.data:
        id = i["id"]
        CompanyName = i["CompanyName"]
        company_type = i["company_type"]
        ExpiryDate = i["ExpiryDate"]
        Permission = i["Permission"]
        CompanyLogo = i["CompanyLogo"]
        Edition = i["Edition"]
        CreatedUserID=i["CreatedUserID"]

        print(ExpiryDate)
        ExpiryDate = date.today().strftime("%Y-%m-%d")
        if i["ExpiryDate"] != None:
            ExpiryDate = i["ExpiryDate"]
        dic = {
            "id": id,
            "CompanyName": CompanyName,
            "company_type": company_type,
            "ExpiryDate": ExpiryDate,
            "Permission": Permission,
            "CompanyLogo": CompanyLogo,
            "Edition": Edition,
            "CreatedUserID": CreatedUserID,
        }
        data.append(dic)

    for i in member_company_serialized.data:
        id = i["id"]
        CompanyName = i["CompanyName"]
        company_type = i["company_type"]
        Permission = i["Permission"]
        CompanyLogo = i["CompanyLogo"]
        Edition = i["Edition"]
        CreatedUserID = i["CreatedUserID"]
        ExpiryDate = date.today().strftime("%Y-%m-%d")
        if i["ExpiryDate"] != None:
            ExpiryDate = i["ExpiryDate"]
        dic = {
            "id": id,
            "CompanyName": CompanyName,
            "company_type": company_type,
            "ExpiryDate": ExpiryDate,
            "Permission": Permission,
            "CompanyLogo": CompanyLogo,
            "Edition": Edition,
            "CompanyID":CreatedUserID
        }
        data.append(dic)

    tes_arry = []
    final_array = []
    for i in data:
        if not i["id"] in tes_arry:
            tes_arry.append(i["id"])
            final_array.append(i)

    CurrentVersion = 0
    MinimumVersion = 0

    software_version_dic = {
        "CurrentVersion": CurrentVersion,
        "MinimumVersion": MinimumVersion,
    }
    response_data = {
        "StatusCode": 6000,
        "data": final_array,
        "SoftwareVersion": software_version_dic,
        "LastLoginCompanyID": LastLoginCompanyID
    }

    return Response(response_data, status=status.HTTP_200_OK)



@api_view(["GET"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def countries(request):
    instances = None
    if Country.objects.all().exists():
        instances = Country.objects.all()
        serializer = serialization.CountrySerializer(instances, many=True)
        response_data = {"StatusCode": 6000, "data": serializer.data}

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        response_data = {"StatusCode": 6001,
                         "message": "Countries Not Found"}
        return Response(response_data, status=status.HTTP_200_OK)


@api_view(["GET"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def country_state(request, pk):
    data = request.data
    # serialized = ListSerializer(data=request.data)
    if State.objects.all().exists():
        country = Country.objects.get(pk=pk)
        instances = State.objects.filter(Country=country)
        serialized = serialization.StateRestSerializer(instances, many=True)
        response_data = {"StatusCode": 6000, "data": serialized.data}

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        response_data = {"StatusCode": 6001, "message": "States Not Found"}

        return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def create_organization(request):
    data = request.data
    try:
        userId = request.data["userId"]
    except:
        userId = request.user.id
    CompanyLogo = data["CompanyLogo"]
    Email = data["Email"]
    Phone = data["Phone"]
    Address1 = data["Address1"]
    Address2 = data["Address2"]
    City = data["City"]
    PostalCode = data["PostalCode"]
    CompanyName = data["CompanyName"]
    State_pk = data["State"]
    States = State.objects.get(pk=State_pk)
    business_type_pk = data["business_type"]
    business_types = BusinessType.objects.get(pk=business_type_pk)
    country_pk = data["Country"]
    countries = Country.objects.get(pk=country_pk)
    FromDate_date = data["FromDate"]
    FromDate = datetime.datetime.strptime(FromDate_date, "%Y-%m-%d")
    ToDate_date = data["ToDate"]
    ToDate = datetime.datetime.strptime(ToDate_date, "%Y-%m-%d")
    date = datetime.datetime.now().date()
    today_date = datetime.datetime.strptime(str(date), "%Y-%m-%d")
    owner = get_object_or_404(User.objects.filter(pk=userId))
    
    if CompanySettings.objects.filter(
        is_deleted=False, owner=owner, CompanyName__iexact=CompanyName
    ).exists():
        company = CompanySettings.objects.filter(
            is_deleted=False, owner=owner, CompanyName__iexact=CompanyName
        ).first()
        access = request.META.get('HTTP_AUTHORIZATION')
        headers = {
            'Content-Type': 'application/json',
            'Authorization': access,
            'accept': "application/json",
        }

        data = {"CompanyName":  CompanyName,
                "id": str(company.id), "UserID": userId, "CompanyLogo": CompanyLogo, "State": State_pk,
                "Country": country_pk, "business_type": business_type_pk, "Email": Email, "Phone": Phone,
                "Address1": Address1, "Address2": Address2, "City": City, "PostalCode": PostalCode,
                "FromDate": FromDate_date, "ToDate": ToDate_date}
        # protocol = "http://"
        # if request.is_secure():
        protocol = "https://"

        # web_host = request.get_host()
        web_host = getBaseUrl("task_manager")
        request_url = protocol + web_host + "/api/v1/organization/create-organization/"
        
        response = requests.post(
            request_url, headers=headers, data=json.dumps(data))
        response_data = response.json()
        print(response_data)
        response_data = {
            "StatusCode": response_data['StatusCode'],
            "message": response_data['message'],
        }

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        company = CompanySettings.objects.create(
            owner=owner,
            CompanyName=CompanyName,
            CompanyLogo=CompanyLogo,
            State=States,
            Country=countries,
            Action="A",
            CreatedUserID=userId,
            business_type=business_types,
            UpdatedUserID=userId,
            Email=Email,
            Phone=Phone,
            Address1=Address1,
            Address2=Address2,
            City=City,
            PostalCode=PostalCode,
            UpdatedDate=today_date,
        )
        response_data = {
            "StatusCode": 6000,
            "message": "Successfully Created",
        }

        return Response(response_data, status=status.HTTP_200_OK)
   
