import json
from multiprocessing import Condition
from django.http.response import HttpResponse
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.renderers import JSONRenderer
from rest_framework.decorators import api_view, permission_classes, renderer_classes
import datetime
from api.v1.accounts.functions import recent_users_encryption
from main.functions import getUrl
import requests
from rest_framework import status
from rest_framework.response import Response

from main.models import AccountCustomerServices, CompanySettings, RecentActivities
from django.db.models import Count


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def accounts(request):
    sid = request.GET.get('sid')
    try:
        action = request.GET.get('action')
    except:
        action = "login"
    try:
        is_admin = request.GET.get('is_admin')
    except:
        is_admin = False
    
    # print(request.COOKIES.get('setting-cookie'))
    # response = HttpResponse("")
    response = HttpResponse("Cookie Set")
    two_years = datetime.datetime.now() + datetime.timedelta(days=730)
    if action == "logout":
        two_years = "1970-05-08T09:42:34.445Z"

    # domain = "vikncodes.com"
    # domain1 = "viknbooks.com"
    # domain = None
    domain = getUrl("sub_domain")
    
    response.set_cookie(key='VBID', value=sid, domain=domain,
                        secure=True, expires=two_years)
    response.set_cookie(key='is_admin', value=is_admin, domain=domain,
                        secure=True, expires=two_years)
    return response


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def recent_users(request):
    data = request.GET.get('data')
    # try:
    #     image_url = request.GET.get('image_url')
    # except:
    #     image_url = ""
    # print(request.COOKIES.get('setting-cookie'))
    # response = HttpResponse("")
    response = HttpResponse("Cookie Set")
    two_years = datetime.datetime.now() + datetime.timedelta(days=730)
    # username = "uvaist"
    # email = "uvaist1997@gmail.com"
    # image_url = "https://www.api.viknbooks.com/media/profiles/Screenshot_from_2022-02-02_11-45-23.png"
    # dic = {
    #     "username" : "uvaist",
    #     "email" : "uvaist1997@gmail.com",
    #     "image_url" : "https://www.api.viknbooks.com/media/profiles/Screenshot_from_2022-02-02_11-45-23.png",
    # }
    # # ===================
    # result = json.dumps(dic)


    # dict_crypted = recent_users_encryption(data)
    # abcd = recent_users_encryption(username,email,image_url)
    # =====================
    # domain = "vikncodes.com"
    # domain = None
    domain = getUrl("sub_domain")
    response.set_cookie(key='ACCOUNT_CHOOSER', value=data, domain=domain,
                        secure=True, expires=two_years)
    # response.set_cookie('VBID', sid)
    return response


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def update_token(request):
    data = request.data
    # UserID = data['UserID']
    UserID = request.user.id
    service = data['service']
    token = data['token']
    
    if AccountCustomerServices.objects.filter(user__id=UserID, Service=service).exists():
        instance = AccountCustomerServices.objects.filter(
            user__id=UserID, Service=service).first()
        instance.LastTokenID = token
        instance.save()
    
    response_data = {"StatusCode": 6000}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def personal_info(request):
    data = request.data
    # UserID = data['UserID']
    UserID = request.user.id
    service = data['service']
    token = data['token']

    if AccountCustomerServices.objects.filter(user__id=UserID, Service=service).exists():
        instance = AccountCustomerServices.objects.filter(
            user__id=UserID, Service=service).first()
        instance.LastTokenID = token
        instance.save()

    response_data = {"StatusCode": 6000}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def payments_subscription(request):
    data = request.data
    UserID = request.user.id
    apps = []
    if RecentActivities.objects.filter(user__id=UserID, activity="Sign in").exists():
        instances = RecentActivities.objects.filter(user__id=UserID, activity="Sign in")
        result = instances.values('service').annotate(dcount=Count('service')).order_by()
        services = result.values_list("service", flat=True)
        for i in services:
            if i == 'viknbooks' or i == 'viknbooks_mobile'or i == 'viknbooks_domain 'or i =='Viknbooks':
                if CompanySettings.objects.filter(owner__id=UserID, is_deleted=False, IsBooks=True).exists():
                    companies = CompanySettings.objects.filter(
                        owner__id=UserID, is_deleted=False, IsBooks=True)
                    for c in companies:
                        dic = {
                            "service":"Viknbooks",
                            "status": True,
                            "logo":'../../images/Viknbooks.svg',
                            "addon": False,
                            "parentApp": "Viknbooks",
                            "parentlogo": '../../images/Viknbooks.svg',
                            "CompanyName": c.CompanyName,
                            "Edition": c.Edition,
                        }
                        apps.append(dic)
            if i == 'task_manager' or i == 'Task Manager':
                dic = {
                    "service": "Task Manager",
                    "status": True,
                    "logo": '../../images/Optiid.svg',
                    "addon": False,
                    "parentApp": "",
                    "parentlogo": '../../images/Optiid.svg',
                    "CompanyName": "",
                    "Edition": "",
                }
                apps.append(dic)
                
            if i == 'payroll' or i == 'Payroll':
                if CompanySettings.objects.filter(owner__id=UserID, is_deleted=False, IsPayroll=True).exists():
                    companies = CompanySettings.objects.filter(
                        owner__id=UserID, is_deleted=False, IsPayroll=True)
                    for c in companies:
                        dic = {
                            "service": "Payroll",
                            "status": True,
                            "logo": '../../images/Payroll.svg',
                            "addon": True,
                            "parentApp": "Viknbooks",
                            "parentlogo": '../../images/Viknbooks.svg',
                            "CompanyName": c.CompanyName,
                            "Edition": c.Edition,
                        }
                        apps.append(dic)
                        
            if i == 'Rassasy' or i == 'rassasy_tab' or i == 'rassasy':
                if CompanySettings.objects.filter(owner__id=UserID, is_deleted=False, IsRassasy=True).exists():
                    companies = CompanySettings.objects.filter(
                        owner__id=UserID, is_deleted=False, IsRassasy=True)
                    for c in companies:
                        dic = {
                            "service": "Rassasy",
                            "status": True,
                            "logo": '../../images/Rassasy.svg',
                            "addon": True,
                            "parentApp": "Viknbooks",
                            "parentlogo": '../../images/Viknbooks.svg',
                            "CompanyName": c.CompanyName,
                            "Edition": c.Edition,
                        }
                        apps.append(dic)
                        
            if i == 'Faera' or i == 'faera':
                if CompanySettings.objects.filter(owner__id=UserID, is_deleted=False, IsFaera=True).exists():
                    companies = CompanySettings.objects.filter(
                        owner__id=UserID, is_deleted=False, IsFaera=True)
                    for c in companies:
                        dic = {
                            "service": "Faera",
                            "status": True,
                            "logo": '../../images/Faera.svg',
                            "addon": True,
                            "parentApp": "Viknbooks",
                            "parentlogo": '../../images/Viknbooks.svg',
                            "CompanyName": c.CompanyName,
                            "Edition": c.Edition,
                        }
                        apps.append(dic)
            

    response_data = {"StatusCode": 6000, "apps": apps}
    return Response(response_data, status=status.HTTP_200_OK)
