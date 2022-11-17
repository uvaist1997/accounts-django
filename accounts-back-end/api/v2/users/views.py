from curses import meta
import json
from opcode import haslocal
from sre_parse import State
from django.template import loader
from django.core.mail import EmailMessage, EmailMultiAlternatives, send_mail
from django.contrib.auth.tokens import default_token_generator
from django.template.loader import render_to_string
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.utils.encoding import force_bytes
from accounts.settings import DEFAULT_FROM_EMAIL
from django.contrib.auth import authenticate, get_user_model, login, logout
from django.db.models import Max, Q
from django.core.exceptions import ObjectDoesNotExist
from django.http.response import HttpResponse
from django.shortcuts import redirect
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.renderers import JSONRenderer
from api.v1.users.functions import  create_user_account_service, get_location, set_divice_details, set_recent_activities, validate_email_address
from main.models import AccountCustomerServices, CompanySettings, Country, Customer, Devices, InviteUsers, RecentActivities, ServiceVersionDetails, User_Log, UserAccountServices, UserTable
from users import models
from . import serialization
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes, renderer_classes, authentication_classes
from rest_framework import status
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from main.functions import CheckTokenExpired, CreateServiceUser, GenerateTokenForReset, TokenResetPassword, generate_serializer_errors, get_visitors_details, getBaseUrl, getUrl, query_for_update_owner, send_email, send_mail_change_ownership, send_mail_user_invitation, send_mail_verification
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
from main.functions import generateTokenNo


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def create_user(request):
    serialized = serialization.RegisterSerializer(data=request.data)
    status_message = status.HTTP_200_OK

    confirm_password = request.data['confirm_password']

    if serialized.is_valid():
        UserName = serialized.data['username']
        Password = serialized.data['password']
        FirstName = serialized.data['firstname']
        LastName = serialized.data['lastname']
        company_id = serialized.data['companyid']
        phone = serialized.data['phone']

        try:
            Profile = request.data['photo']
        except:
            Profile = None

        if User.objects.filter(username=UserName).exists():
            response_data = {
                "StatusCode": 6001,
                "message": "username already exists!"
            }
        else:
            if confirm_password == Password:
                new_user = User.objects.create_user(username=UserName, password=Password,
                                                    first_name=FirstName, last_name=LastName)
                response_data = {
                    "StatusCode": 6000,
                    "message": "user successfully created"
                }
               

            else:
                response_data = {
                    "StatusCode": 6001,
                    "message": "password not matching."
                }
               
    else:
        response_data = {
            "StatusCode": 6001,
            "message": generate_serializer_errors(serialized._errors)
        }

    return Response(response_data, status=status_message)


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def image_with_cookie(request):
    # response = HttpResponse("Welcome Guest.")  
    img = open(settings.STATIC_FILE_ROOT+'/cookies.jpg', 'rb')

    response = FileResponse(img)
    response.set_cookie(key='programink', value='We love Django', domain=".vikncodes.com")  

    return response  


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def render_document(request):
    # response = HttpResponse("Welcome Guest.")  
    # img = open(settings.STATIC_FILE_ROOT+'/cookies.jpg', 'rb')
    print(request.COOKIES.get('setting-cookie')) 
    response = HttpResponse("")
    # response.set_cookie(key='setting-cookie', value='Cookie Set', domain=".vikncodes.com")  
    response.set_cookie(key='awesome-django', value='django is awesome')  

    return response  


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_user(request, pk):
    serialized = serialization.EditSerializer(data=request.data)
    instance = User.objects.get(id=pk)

    try:
        Profile = request.data['photo']
    except:
        Profile = None

    confirm_password = request.data['confirm_password']

    if instance:
        if serialized.is_valid():
            phone = serialized.data['phone']
            username = serialized.data['username']
            FirstName = serialized.data['firstname']
            LastName = serialized.data['lastname']
            Password = serialized.data['password']
            if confirm_password == Password:
                instance.first_name = FirstName
                instance.last_name = LastName
                instance.username = username
                instance.set_password(Password)
                instance.save()

                userinstance = models.Users.objects.get(user__pk=pk)
                if Profile:
                    userinstance.ProfilePic = Profile
                userinstance.phone = phone
                userinstance.FirstName = FirstName
                userinstance.LastName = LastName
                userinstance.Password = Password
                userinstance.save()

                response_data = {
                    "StatusCode": 6000,
                    'data': serialized.data,
                    "message": "successfully updated"
                }
            else:
                response_data = {
                    "StatusCode": 6001,
                    "message": "password not matching."
                }
        else:
            response_data = {
                "StatusCode": 6001,
                "message": generate_serializer_errors(serialized._errors)
            }
    else:
        response_data = {
            "StatusCode": 6001,
            'message': "User not found."
        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def users(request):
    company_id = request.data['company_id']
    instances = models.Users.objects.filter(is_deleted=False, company__pk=company_id)

    query = request.GET.get('q')
    if query:
        instances = instances.filter(name__icontains=query)

    serialized = serialization.UserSerializer(instances, many=True, context={"request": request})

    response_data = {
        "StatusCode": 6000,
        'data': serialized.data,
        'message': 'success'
    }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def user(request, pk):
    instance = None
    if models.Users.objects.filter(is_deleted=False, pk=pk).exists():
        instance = models.Users.objects.get(is_deleted=False, pk=pk)

    if instance:
        serialized = serialization.UserSerializer(instance, context={"request": request})

        response_data = {
            "StatusCode": 6000,
            'data': serialized.data
        }
    else:
        response_data = {
            "StatusCode": 6001,
            'message': "User not found."
        }

    return Response(response_data, status=status.HTTP_200_OK)


# @api_view(['POST'])
# @permission_classes((AllowAny,))
# @renderer_classes((JSONRenderer,))
# def auth_user(request):
#     serialized = serialization.LoginSerializer(data=request.data)
#     message = 'none'

#     if serialized.is_valid():
#         username = serialized.data['username']
#         password = serialized.data['password']
#         try:
#             service = request.data['service']
#         except:
#             service = None

#         user = authenticate(username=username, password=password)

#         if user:
#             login(request, user)
#             headers = {
#                 'Content-Type': 'application/json',
#             }

#             data = {"username":  username, "password": password}
#             protocol = "http://"
#             if request.is_secure():
#                 protocol = "https://"

#             web_host = request.get_host()
#             request_url = protocol + web_host + "/api/v1/authentication/token/"
#             response = requests.post(request_url, headers=headers, data=json.dumps(data))

#             if response.status_code == 200:
#                 data = response.json()
#                 print(data)
#                 print("response printed here")
#                 success = 6000
#                 message = "Login successfully"

#                 access_token = data["access"]
#                 response_redirect = None
#                 if service:
#                     admin_SSO = User.objects.get(id=data['user_id'])
#                     token = RefreshToken.for_user(admin_SSO)
#                     service_header = {
#                         'Content-Type': 'application/json',
#                         'Authorization': f"Bearer {token.access_token}"
#                     }
#                     if service == "otaibi":
#                         service_data = {
#                             "id": user.id,
#                             "password": user.password,
#                             "username": user.username,
#                             "first_name": user.first_name,
#                             "last_name": user.last_name,
#                             "email": user.email,
#                             "last_login": str(user.last_login),
#                         }
#                         service_url = "https://juhaniapi.viknbooks.com/api/v1/users/create"
#                         response_service = requests.post(
#                             service_url, headers=service_header, data=json.dumps(service_data))
#                         response_service_data = response_service.json()
#                         response_redirect = response_service_data['response_redirect']

#                 return Response(
#                     {
#                         'success': success,
#                         'data': data,
#                         'user_id': data['user_id'],
#                         'role': data['role'],
#                         'message': message,
#                         'error': None,
#                         'username': username,
#                         'response_redirect':response_redirect
#                     },
#                     status=status.HTTP_200_OK)
#             else:
#                 success = 6001
#                 data = None
#                 error = "please contact admin to solve this problem."
#         else:
#             success = 6001
#             data = None
#             message = 'Invalid username/password'

#     else:
#         message = generate_serializer_errors(serialized._errors)
#         success = 6001
#         data = None

#     return Response(
#         {
#             'success': success,
#             'data': data,
#             'error': message,
#         },
#         status=status.HTTP_400_BAD_REQUEST)


@api_view(['POST'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def auth_user(request):
    serialized = serialization.LoginSerializer(data=request.data)
    message = 'none'
    CreatedUserID = ""
    is_verified = False
    is_login = False
    user_name_ok = False
    password_ok = False
    customer_ins = None
    data = request.data
    user_id = None
    try:
        is_admin = request.data['is_admin']
    except:
        is_admin = False
        
    if serialized.is_valid():
        username = serialized.data['username']
        password = serialized.data['password']
        user_insts = None
        user_email = ""
        if User.objects.filter(email=username).exists():
            email = username
            username = User.objects.get(email=email).username
            user_id = User.objects.get(email=email).id
            user_name_ok = True
            user_insts = User.objects.get(email=email)
        elif User.objects.filter(username=username).exists():
            user_name_ok = True
            user_id = User.objects.get(username=username).id
            user_insts = User.objects.get(username=username)
        if user_insts:
            user_email = user_insts.email
            password_ok = user_insts.check_password(password)
        try:
            service = request.data['service']
        except:
            service = None

        user = authenticate(username=username, password=password)
        if user:
            is_login = True
            # if User.objects.filter(username=username).exists():
            #     user_ins = User.objects.get(username=username)
            if user.is_active == True:
                is_verified = True
        if user:
            login(request, user)
            headers = {
                'Content-Type': 'application/json',
            }

            data = {"username":  username, "password": password}
            protocol = "http://"
            if request.is_secure():
                protocol = "https://"

            web_host = request.get_host()
            request_url = protocol + web_host + "/api/v1/authentication/token/"
            response = requests.post(
                request_url, headers=headers, data=json.dumps(data))

            if response.status_code == 200:
                data = response.json()
                print("response printed here")
                success = 6000
                message = "Login successfully"

                access_token = data["access"]
                # response_redirect = None
                if service:
                    if is_admin == False:
                        if AccountCustomerServices.objects.filter(user=user, Service=service).exists():
                            acc_service = AccountCustomerServices.objects.filter(
                                user=user, Service=service).first()
                            acc_service.LastTokenID = access_token
                            acc_service.save()
                        else:
                            AccountCustomerServices.objects.create(
                                user=user,
                                LastTokenID=access_token,
                                Service=service
                            )
                    admin_SSO = User.objects.get(id=data['user_id'])
                    token = RefreshToken.for_user(admin_SSO)
                    service_header = {
                        'Content-Type': 'application/json',
                        'Authorization': f"Bearer {token.access_token}"
                    }
                    
                    # if service == "otaibi":
                    #     service_url = "https://juhaniapi.viknbooks.com/api/v1/users/create"
                    #     redirect_response = redirect(f"https://juhaniapi.viknbooks.com/api/v1/users/accounts?sid={access_token}")

                    #     # response_service_data = response_service.json()
                    #     # response_redirect = response_service_data['response_redirect']
                    # elif service == "viknbooks":
                    #     service_url = "https://www.testapi.viknbooks.com/api/v9/users/create"
                    #     redirect_response = redirect(f"https://www.testapi.viknbooks.com/api/v9/users/accounts?sid={access_token}")
                    #     print("printing response...........................................................")
                    #     print(redirect_response)
                    #     print("printing response...........................................................")

                    # if redirect_response.status_code == 302:
                    #     response =  Response(
                    #     {
                    #         'success': 6000,
                    #         'url' : 'https://test.viknbooks.com/dashboard/home'
                    #     },
                    #     status=status.HTTP_200_OK)
                    if service == "viknbooks":
                        service = "viknbooks_domain"
                    base_url = getBaseUrl(service)
                    service_url = base_url + "users/create-user"
                    service_data = {
                            "id": user.id,
                            "role":data['role'],
                            "password": user.password,
                            "username": user.username,
                            "first_name": user.first_name,
                            "last_name": user.last_name,
                            "email": user.email,
                            "last_login": str(user.last_login),
                        }
                    # new_data = service_data.update(data)
                    response_service = requests.post(
                    service_url, headers=service_header, data=json.dumps(service_data))
                data["username"] = user.username
                data["email"] = user.email

                set_recent_activities(request,'Sign in',service)
                set_divice_details(request)
                create_user_account_service(user)
                
                data["last_login"] = str(user.last_login)

                response = Response(
                    {
                        'success': success,
                        'data': data,
                        'user_id': data['user_id'],
                        'role': data['role'],
                        'message': message,
                        'error': None,
                        'username': username,
                        # 'response_redirect':response_redirect
                    },
                    status=status.HTTP_200_OK)

                # response = HttpResponse(access_token)
                # two_years = datetime.datetime.now()+datetime.timedelta(days=730)
                # response.set_cookie(key='VBID', value={'VBID': access_token, 'is_admin': False}, domain=".localhost",
                #                     path='/', expires=two_years, samesite='None', secure=True)
                
                return response
            else:
                success = 6001
                data = None
                error = "please contact admin to solve this problem."
                return Response(
                    {
                        'success': success,
                        'data': data,
                        'error': message,
                    },
                    status=status.HTTP_200_OK)
        else:
            success = 6001
            error_code = 6001
            data = None
            if user_name_ok and password_ok == False:
                error_code = 6002
                error = "Password Incorrect"
            elif user_name_ok and is_verified == False:
                error = "Please Verify Your Email to Login"
                error_code = 6003
                data = user_id
            else:
                error = "User not found"
            return Response(
                {
                    "success": success,
                    "data": data,
                    "error": error,
                    "error_code": error_code,
                    "user_email": user_email
                },
                status=status.HTTP_200_OK,
            )

    else:
        message = generate_serializer_errors(serialized._errors)
        success = 6001
        data = None

        return Response(
            {
                'success': success,
                'data': data,
                'error': message,
            },
            status=status.HTTP_200_OK)


@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def logout_user(request):
    try:
        request.user.auth_token.delete()
    except (AttributeError, ObjectDoesNotExist):
        pass
    if getattr(settings, 'REST_SESSION_LOGIN', True):
        logout(request)
    response_data = {
        'StatusCode': 6000,
        'message': "Logout successfully",
        'error': None,
    }
    if getattr(settings, 'REST_USE_JWT', False):
        if jwt_settings.JWT_AUTH_COOKIE:
            response_data.delete_cookie(jwt_settings.JWT_AUTH_COOKIE)

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def logout_cookie(request):
    print("SSSS@@@@@@@@@SSSS")
    response = HttpResponse("Cookie Set")
    two_years = "1970-05-08T09:42:34.445Z"
    # domain = "vikncodes.in"
    domain = None
    response.set_cookie(key='VBID', value="", domain=domain,
                        secure=True, expires=two_years)
    # response.set_cookie('VBID', 'cookie_value', max_age=1000,domain=domain)

    return response


@api_view(['GET'])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def download_database(request):
    BASE_DIR = settings.MEDIA_ROOT
    try:
        today = date.today()
        folder = f"{BASE_DIR}/database_backup/"
        if not path.exists(folder):
            os.mkdir(folder)
            os.chmod(folder, 0o777)
        else: 
            pass
        os.system(f"""
        cd {folder}
        pg_dump otaibi > {today}.sql
        zip -r {today}.zip {today}.sql  
        rm {today}.sql
        """)

        filepath = f"{folder}{today}.zip"
        file = open(filepath, 'rb')
        mime_type, _ = mimetypes.guess_type(filepath)
        response = HttpResponse(file, content_type=mime_type)
        response['Content-Disposition'] = "attachment; filename=%s" % f"{today}.zip"

        return response

    except Exception as error :

        return HttpResponse(error)
    
    
@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def get_users(request):
    username = request.data['username']
    if Customer.objects.filter(Q(user__username__icontains=username) | Q(user__email__icontains=username)).exists():
        instances = Customer.objects.filter(
            Q(user__username__icontains=username) | Q(user__email__icontains=username))
        serializer = serialization.CustomerSerializer(instances, many=True)
        response_data = {"StatusCode": 6000, "data": serializer.data}

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        response_data = {"StatusCode": 6001,
                         "message": "Countries Not Found"}
        return Response(response_data, status=status.HTTP_200_OK)
    
    
@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def get_username(request):
    try:
        UserID = request.data['UserID']
    except:
        UserID = request.user.id
    if User.objects.filter(id=UserID).exists():
        instance = User.objects.get(id=UserID)
        username = instance.username
        email = instance.email
        response_data = {"StatusCode": 6000,
                         "username": username,
                         "email": email,
                          "UserID": UserID}
    else:
        response_data = {"StatusCode": 6001,
                         "message": "User Not Found"}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def check_username(request):
    try:
        username = request.data["username"]
    except:
        username = ""
    try:
        email = request.data["email"]
    except:
        email = ""

    is_username = False
    is_email = False
    if User.objects.filter(username__iexact=username).exists():
        is_username = True
    if User.objects.filter(email__iexact=email).exists():
        is_email = True
    return Response(
        {
            "is_username": is_username,
            "is_email": is_email,
        },
        status=status.HTTP_200_OK,
    )


@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def user_signup(request):
    today = datetime.datetime.now()
    serialized = serialization.SignupSerializer(data=request.data)
    data = request.data
    if serialized.is_valid():
        first_name = serialized.validated_data["first_name"]
        last_name = data["last_name"]
        username = serialized.validated_data["username"]
        email = serialized.validated_data["email"]
        password1 = serialized.validated_data["password1"]
        password2 = serialized.validated_data["password2"]

        try:
            Phone = data["phone"]
        except:
            Phone = None

        try:
            country = data["country"]
        except:
            country = None

        try:
            state = data["State"]
        except:
            state = None
            
        try:
            service = data["service"]
        except:
            service = None

        country_ins = None
        state_ins = None
        if Country.objects.filter(Country_Name=country).exists():
            country_ins = Country.objects.get(Country_Name=country)

        # if State.objects.filter(id=state).exists():
        #     state_ins = State.objects.get(id=state)

        message = ""
        error = False

        bad_domains = ["guerrillamail.com"]
        if "@" in email:
            email_domain = email.split("@")[1]
        else:
            message = "Please enter a proper Email"

        if User.objects.filter(email__iexact=email, is_active=True):
            message = "This email address is already in use."
            error = True
        elif email_domain in bad_domains:
            message = (
                "Registration using %s email addresses is not allowed. Please supply a different email address."
            ) % email_domain
            error = True
            email = email

        min_password_length = 6

        if len(password1) < min_password_length:
            message = "Password must have at least %i characters" % min_password_length
            error = True
        else:
            password1 = password1

        if password1 and password2 and password1 != password2:
            message = "password_mismatch"
            error = True
            password2 = password2

        min_username_length = 6

        existing = User.objects.filter(username__iexact=username)
        if existing.exists():
            message = "A user with that username already exists."
            error = True
        elif User.objects.filter(email__iexact=email).exists():
            message = "A user with that email already exists."
            error = True
        elif len(username) < min_username_length:
            message = "Username must have at least %i characters" % min_password_length
            error = True
        else:
            username = username

        active = False

        if not error:
            try:
                timezone = data["timezone"]
            except:
                timezone = None

            verificationToken = generateTokenNo()

            if InviteUsers.objects.filter(Email=email).exists():
                active = True
                invited_user = InviteUsers.objects.filter(Email=email).first()
                if not User.objects.filter(Q(username=username) | Q(email=email)).exists():
                    user = User.objects.create_user(
                        first_name=first_name,
                        last_name=last_name,
                        email=email,
                        username=username,
                        password=password1,
                        is_superuser=False,
                    )
                    if not Customer.objects.filter(user=user).exists():
                        customer = Customer.objects.create(
                            user=user,
                            Phone=Phone,
                            Country=country_ins,
                            State=state_ins,
                            LastLoginCompanyID=invited_user.CompanyID,
                            VerificationToken=verificationToken,
                            VerificationTokenTime=today,
                            TimeZone=timezone,
                        )

                        user_table = UserTable.objects.create(
                            CompanyID=invited_user.CompanyID,
                            UserType=invited_user.UserType,
                            DefaultAccountForUser=invited_user.DefaultAccountForUser,
                            CreatedUserID=invited_user.InvitedUserID,
                            customer=customer,
                            CreatedDate=today,
                            UpdatedDate=today,
                            Cash_Account=invited_user.Cash_Account,
                            Bank_Account=invited_user.Bank_Account,
                            Sales_Account=invited_user.Sales_Account,
                            Sales_Return_Account=invited_user.Sales_Return_Account,
                            Purchase_Account=invited_user.Purchase_Account,
                            Purchase_Return_Account=invited_user.Purchase_Return_Account,
                            JoinedDate=today.date(),
                            ExpiryDate=invited_user.ExpiryDate,
                            is_web=invited_user.is_web,
                            is_mobile=invited_user.is_mobile,
                            is_pos=invited_user.is_pos,
                            BranchID=invited_user.BranchID,
                            show_all_warehouse=invited_user.show_all_warehouse,
                            DefaultWarehouse=invited_user.DefaultWarehouse,
                        )

                        User_Log.objects.create(
                            TransactionID=user_table.id,
                            CompanyID=invited_user.CompanyID,
                            UserType=invited_user.UserType,
                            DefaultAccountForUser=invited_user.DefaultAccountForUser,
                            CreatedUserID=invited_user.InvitedUserID,
                            customer=customer,
                            CreatedDate=today,
                            UpdatedDate=today,
                            Cash_Account=invited_user.Cash_Account,
                            Bank_Account=invited_user.Bank_Account,
                            Sales_Account=invited_user.Sales_Account,
                            Sales_Return_Account=invited_user.Sales_Return_Account,
                            Purchase_Account=invited_user.Purchase_Account,
                            Purchase_Return_Account=invited_user.Purchase_Return_Account,
                            JoinedDate=today.date(),
                            ExpiryDate=invited_user.ExpiryDate,
                            is_web=invited_user.is_web,
                            is_mobile=invited_user.is_mobile,
                            is_pos=invited_user.is_pos,
                            BranchID=invited_user.BranchID,
                            show_all_warehouse=invited_user.show_all_warehouse,
                            DefaultWarehouse=invited_user.DefaultWarehouse,
                        )
                # if service:
                #     CreateServiceUser(user, service)
                invited_user.delete()
            else:
                user = User.objects.create_user(
                    first_name=first_name,
                    last_name=last_name,
                    email=email,
                    username=username,
                    password=password1,
                    is_superuser=False,
                    is_active=False,
                )
                if not Customer.objects.filter(user=user).exists():
                    Customer.objects.create(
                        user=user,
                        Phone=Phone,
                        Country=country_ins,
                        State=state_ins,
                        VerificationToken=verificationToken,
                        VerificationTokenTime=today,
                        TimeZone=timezone,
                    )
                send_mail_verification(user, request)

            response_data = {
                "StatusCode": 6000,
                "data": serialized.data,
                "userID": user.id,
                "active": active,
            }

            return Response(response_data, status=status.HTTP_200_OK)
        else:
            response_data = {"StatusCode": 6001, "message": message}

        return Response(response_data, status=status.HTTP_200_OK)
    else:
        response_data = {
            "StatusCode": 6001,
            "message": generate_serializer_errors(serialized._errors),
        }

        return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def signUp_verified(request):
    today = datetime.datetime.now()
    data = request.data
    UserID = data["UserID"]
    try:
        token = data["token"]
    except:
        token = None
    try:
        service = data["service"]
    except:
        service = "viknbooks"

    err_msg = "OTP Expired.please verify again"
    if User.objects.filter(id=UserID).exists():
        user = User.objects.get(id=UserID)
        instances = Customer.objects.filter(user=user)
        customer_ins = instances.first()
        VerificationToken = customer_ins.VerificationToken
        VerificationTokenTime = customer_ins.VerificationTokenTime
        TimeZone = customer_ins.TimeZone
        is_token_expired = CheckTokenExpired(TimeZone, VerificationTokenTime)
        if not int(token) == int(VerificationToken) and not instances.filter(VerificationToken=token):
            err_msg = "Invalid OTP"

        if int(token) == int(VerificationToken) and is_token_expired == False:
            User.objects.filter(id=UserID).update(is_active=True)
            if service:
                CreateServiceUser(user, service)
                create_user_account_service(user)

            response_data = {
                "StatusCode": 6000,
            }
        else:
            response_data = {
                "StatusCode": 6001,
                "message": err_msg,
            }
    else:
        response_data = {"StatusCode": 6001, "message": "User not found"}

    return Response(response_data, status=status.HTTP_200_OK)
  

@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def resend_verification_code(request):
    today = datetime.datetime.now()
    serialized = serialization.UsernameEmailSerializer(data=request.data)
    message = "Invalid Input"
    success = 6001
    status_code = status.HTTP_400_BAD_REQUEST
    data = request.data
    try:
        userID = data["UserID"]
    except:
        userID = None

    if serialized.is_valid():
        data = serialized.data["data"]
        message = f"No user is associated with this {data}"
        success = 6001
        status_code = status.HTTP_400_BAD_REQUEST
        try:
            time_zone = data["timezone"]
        except:
            timezone = None

        verificationToken = generateTokenNo()
        if User.objects.filter(email=data).exclude(id=userID).exists():
            success = 6001
            status_code = status.HTTP_200_OK
            message = "Email is alreading using"
            return Response(
                {"message": message, "success": success, "userID": userID}, status=status_code
            )
        else:
            user = User.objects.filter(id=userID).update(email=data)
            
        user = None
        if User.objects.filter(id=userID).exists():
            user = User.objects.get(id=userID)
        elif User.objects.filter(email=data).exists():
            user = User.objects.get(email=data)
            
        if validate_email_address(data) is True and user:
            """
            If the input is an valid email address, then the following code will lookup for users associated with that email address. If found then an email will be sent to the address, else an error message will be printed on the screen.
            """
            if Customer.objects.filter(user=user).exists():
                Customer.objects.filter(user=user).update(
                    VerificationToken=verificationToken,
                    VerificationTokenTime=today,
                    TimeZone=timezone,
                )
                send_mail_verification(user, request)
                userID = user.id

            message = "An email has been sent to {0}. Please check its inbox to continue Resend verification.".format(
                data
            )
            success = 6000
            status_code = status.HTTP_200_OK

        else:
            message = "This username does not exist in the system"
            success = 6001
            status_code = status.HTTP_400_BAD_REQUEST

            """
            If the input is an username, then the following code will lookup for users associated with that user. If found then an email will be sent to the user's address, else an error message will be printed on the screen.
            """
            if User.objects.filter(email=data).exists():
                user = User.objects.get(email=data)
                if Customer.objects.filter(user=user).exists():
                    Customer.objects.filter(user=user).update(
                        VerificationToken=verificationToken,
                        VerificationTokenTime=today,
                        TimeZone=timezone,
                    )
                    send_mail_verification(user, request)
                    userID = user.id
                message = "Email has been sent to {0}'s email address. Please check its inbox to continue Resend verification.".format(
                    data
                )
                success = 6000
                status_code = status.HTTP_200_OK

    return Response(
        {"message": message, "success": success, "userID": userID}, status=status_code
    )


def reset_password(user, request, is_mobile):
    uid = urlsafe_base64_encode(force_bytes(user.pk))
    token = default_token_generator.make_token(user)
    data = f"{uid}/{token}"
    Token = TokenResetPassword(data,user)
    if is_mobile:
        context = {
            "current_user": user,
            "username": user.username,
            "email": user.email,
            'reset_password_url': getUrl("reset_password_url"),
            "uid": urlsafe_base64_encode(force_bytes(user.pk)),
            "token": default_token_generator.make_token(user),
            "is_mobile": is_mobile,
            "Token": Token
        }
        email_html_message = render_to_string("email/email.html", context)
        email_plaintext_message = render_to_string(
            "email/user_reset_password.txt", context
        )

        msg = EmailMultiAlternatives(
            # title:
            "Password Reset for {title}".format(title="viknbooks.com"),
            # message:
            email_plaintext_message,
            # from:
            "noreply@somehost.local",
            # to:
            [user.email],
        )
        msg.attach_alternative(email_html_message, "text/html")
        msg.send()

    else:
        c = {
            "email": user.email,
            "domain": request.META["HTTP_ORIGIN"],
            "site_name": "your site",
            "uid": urlsafe_base64_encode(force_bytes(user.pk)),
            "user": user,
            "token": default_token_generator.make_token(user),
            "Token": Token
        }
        print(c)
        email_template_name = "email/password_reset_conform.html"
      
        email = loader.render_to_string(email_template_name, c)
        send_mail(
            "viknbooks password reset",
            email,
            DEFAULT_FROM_EMAIL,
            [user.email],
            fail_silently=False,
        )


@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def forgot_password(request):
    serialized = serialization.UsernameEmailSerializer(data=request.data)
    message = "Invalid Input"
    success = 6001
    status_code = status.HTTP_400_BAD_REQUEST
    try:
        is_mobile = request.data["is_mobile"]
    except:
        is_mobile = False

    if serialized.is_valid():
        data = serialized.data["data"]
        message = f"No user is associated with this {data}"
        success = 6001
        status_code = status.HTTP_400_BAD_REQUEST

        if validate_email_address(data) is True:
            """
            If the input is an valid email address, then the following code will lookup for users associated with that email address. If found then an email will be sent to the address, else an error message will be printed on the screen.
            """
            associated_users = User.objects.filter(Q(email=data) | Q(username=data))
            if associated_users.exists():
                for user in associated_users:
                    reset_password(user, request, is_mobile)

                message = "An email has been sent to {0}. Please check its inbox to continue reseting password.".format(
                    data
                )
                success = 6000
                status_code = status.HTTP_200_OK

        else:
            message = "This username does not exist in the system"
            success = 6001
            status_code = status.HTTP_400_BAD_REQUEST

            """
            If the input is an username, then the following code will lookup for users associated with that user. If found then an email will be sent to the user's address, else an error message will be printed on the screen.
            """
            associated_users = User.objects.filter(username=data)
            if associated_users.exists():
                for user in associated_users:
                    reset_password(user, request, is_mobile)
                message = "Email has been sent to {0}'s email address. Please check its inbox to continue reseting password.".format(
                    data
                )
                success = 6000
                status_code = status.HTTP_200_OK

    return Response(
        {
            "message": message,
            "success": success,
        },
        status=status_code,
    )
    

@api_view(["POST"])
@permission_classes((AllowAny,))
@renderer_classes((JSONRenderer,))
def forgot_password_confirm(request, Token):
    serialized = serialization.ResetPasswordSerializer(data=request.data)
    """
    View that checks the hash in a password reset link and presents a
    form for entering a new password.
    """
    TokenDetails = GenerateTokenForReset(Token)
    print(Token,"TokenDetails")
    if TokenDetails:
        uidb64 = TokenDetails[0]
        token = TokenDetails[1]
        UserModel = get_user_model()
        assert uidb64 is not None and token is not None  # checked by URLconf
        try:
            uid = urlsafe_base64_decode(uidb64)
            user = UserModel._default_manager.get(pk=uid)
        except (TypeError, ValueError, OverflowError, UserModel.DoesNotExist):
            user = None

        if user is not None and default_token_generator.check_token(user, token):
            message = "Password reset has not been successful."
            success = 6001
            if serialized.is_valid():
                new_password1 = serialized.data["new_password1"]
                new_password2 = serialized.data["new_password2"]
                if new_password1 == new_password2:
                    user.set_password(new_password1)
                    user.save()
                    message = "Password has been reset."
                    success = 6000
                else:
                    message = "Password not matching"
                    success = 6001

        else:
            message = "The reset password link is no longer valid."
            success = 6001
    else:
        message = "The reset password link is no longer valid."
        success = 6001

    return Response(
        {
            "message": message,
            "success": success,
        },
        status=status.HTTP_200_OK,
    )

# @api_view(["POST"])
# @permission_classes((AllowAny,))
# @renderer_classes((JSONRenderer,))
# def forgot_password_confirm(request, uidb64, token):
#     serialized = serialization.ResetPasswordSerializer(data=request.data)
#     """
#     View that checks the hash in a password reset link and presents a
#     form for entering a new password.
#     """
#     UserModel = get_user_model()
#     assert uidb64 is not None and token is not None  # checked by URLconf
#     print(UserModel._default_manager.get(pk=39))
#     print(urlsafe_base64_decode(uidb64))
#     try:
#         uid = urlsafe_base64_decode(uidb64)
#         user = UserModel._default_manager.get(pk=uid)
#     except (TypeError, ValueError, OverflowError, UserModel.DoesNotExist):
#         user = None

#     if user is not None and default_token_generator.check_token(user, token):
#         message = "Password reset has not been successful."
#         success = 6001
#         if serialized.is_valid():
#             new_password1 = serialized.data["new_password1"]
#             new_password2 = serialized.data["new_password2"]
#             if new_password1 == new_password2:
#                 user.set_password(new_password1)
#                 user.save()
#                 message = "Password has been reset."
#                 success = 6000
#             else:
#                 message = "Password not matching"
#                 success = 6001

#     else:
#         message = "The reset password link is no longer valid."
#         success = 6001

#     return Response(
#         {
#             "message": message,
#             "success": success,
#         },
#         status=status.HTTP_200_OK,
#     )


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def create_service_user(request):
    try:
        UserID = request.data['UserID']
    except:
        UserID = request.user.id
    # service = request.data['service']
    response_data = {"StatusCode": 6001, "message": "error"}

    if UserID:
        user = User.objects.get(id=UserID)
        # token = RefreshToken.for_user(user)
        # base_url = getBaseUrl(service)
        # service_url = base_url + "users/create-user"
        # service_header = {
        #     'Content-Type': 'application/json',
        #     'Authorization': f"Bearer {token.access_token}"
        # }
        service_data = {
            "id": user.id,
            "password": user.password,
            "username": user.username,
            "first_name": user.first_name,
            "last_name": user.last_name,
            "email": user.email,
            "last_login": str(user.last_login),
        }
        # response_service = requests.post(
        #     service_url, headers=service_header, data=json.dumps(service_data))
        
        response_data = {"StatusCode": 6000, "service_data": service_data}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def invite_user(request):
    email = request.data['email']
    service = request.data['service']
    send_mail_user_invitation(email, request, service)
    response_data = {"StatusCode": 6000}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def logout_view(request):
    try:
        request.user.auth_token.delete()
    except (AttributeError, ObjectDoesNotExist):
        pass
    if getattr(settings, "REST_SESSION_LOGIN", True):
        logout(request)
    response_data = {
        "StatusCode": 6000,
        "message": "Logout successfully",
        "error": None,
    }
    if getattr(settings, "REST_USE_JWT", False):
        from rest_framework_jwt.settings import api_settings as jwt_settings

        if jwt_settings.JWT_AUTH_COOKIE:
            response_data.delete_cookie(jwt_settings.JWT_AUTH_COOKIE)

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def check_data(request):
    try:
        user_id = request.data["user_id"]
    except:
        user_id = request.user.id
    service = request.data["service"]
    LastTokenID = None
    versionDetails = {}
    if AccountCustomerServices.objects.filter(user__id=user_id, Service=service).exists():
        customer_service = AccountCustomerServices.objects.filter(user__id=user_id, Service=service).first()
        LastTokenID = customer_service.LastTokenID
    
    if ServiceVersionDetails.objects.filter(Service=service).exists():
        service_ins = ServiceVersionDetails.objects.filter(Service=service).first()
        Version = service_ins.Version
        Message = service_ins.Message
        is_updation = service_ins.is_updation
        UpdatedDate = service_ins.UpdatedDate
        versionDetails = {
            "Version": Version,
            "Message": Message,
            "is_updation": is_updation,
            "UpdatedDate": UpdatedDate,
        }
    response_data = {
        "StatusCode": 6000,
        "LastTokenID": LastTokenID,
        "versionDetails": versionDetails,
    }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def list_device(request):
    if Devices.objects.filter(user__id=request.user.id).exists():
        list_device = Devices.objects.filter(user__id=request.user.id).order_by('id')[:5]
        serialized = serialization.DevicesSerializer(list_device, many=True,)
        response_data = {
            "StatusCode": 6000,
            "data": serialized.data,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "data":[]
        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def list_recent_activity(request):
    if RecentActivities.objects.filter(user__id=request.user.id).exists():
        list_recent_activity = RecentActivities.objects.filter(user__id=request.user.id).order_by('id')[:5]
        serialized = serialization.RecentActivitiesSerializer(list_recent_activity, many=True,)

        response_data = {
            "StatusCode": 6000,
            "data": serialized.data,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "data":[]

        }

    return Response(response_data, status=status.HTTP_200_OK)
    # return response


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def change_password(request):
    username = request.data['username']
    current_password = request.data['current_password']
    new_password = request.data['new_password']
    if username and current_password and new_password:
        user = authenticate(username=username,password=current_password)
        print(user,"************************",username,current_password)
        set_recent_activities(request,'Changed Password',"accounts")
        try:
            if user is not None:
                user.set_password(new_password)
                user.save()
                message = "Password Updated Successfully"
                StatusCode = 6000
            else:
                message = "Current Password Incorrect"
                StatusCode = 6001
        except:
            message = "Current Password Incorrect"
            StatusCode = 6001

        response_data = {
            "StatusCode": StatusCode,
            "message": message,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":'Please Fill All The Fields'

        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def list_account_services(request):    
    
    # inst = CompanySettings.objects.filter(CompanyName="Company2")
    # print(inst)
    # print(inst.delete())
    if UserAccountServices.objects.filter(user__id=request.user.id).exists():
        instance = UserAccountServices.objects.get(user__id=request.user.id)
        recent_activities = RecentActivities.objects.filter(user__id=request.user.id)
        data = []
        if recent_activities.filter(Q(service='viknbooks') | Q(service='viknbooks_mobile') | Q(service='viknbooks_domain') | Q(service='Viknbooks')):
            dic = {
            "service":"Viknbooks",
            "status":instance.is_viknbooks,
            "logo":'../../images/Viknbooks.svg',
            "addon": False
            }
            data.append(dic)
        if recent_activities.filter(Q(service='task_manager') | Q(service='Task Manager')):
            dic = {
                "service":"TaskManager",
                "status":instance.is_task,
                "logo":'../../images/Optiid.svg',
                "addon": False
            }
            data.append(dic)
        if recent_activities.filter(Q(service='payroll') | Q(service='Payroll')):
            dic = {
            "service":"Payroll",
            "status":instance.is_payroll,
            "logo":'../../images/Payroll.svg',
            "addon": False
            }
            data.append(dic)
        if recent_activities.filter(Q(service='Rassasy') | Q(service='rassasy_tab') | Q(service='rassasy')):
            dic = {
            "service":"Rassasy",
            "status":instance.is_rassasy,
            "logo":'../../images/Rassasy.svg',
            "addon": True
            }
            data.append(dic)
        if recent_activities.filter(Q(service='Faera') | Q(service='faera')):
            dic = {
            "service":"Faera",
            "status":instance.is_faera,
            "logo":'../../images/Faera.svg',
            "addon": True
            }
            data.append(dic)
        
        # data = [
        #     {
        #     "service":"Viknbooks",
        #     "status":instance.is_viknbooks,
        #     "logo":'../../images/Viknbooks.svg'
        #     },
        #     {
        #     "service":"Task Manager",
        #     "status":instance.is_task,
        #     "logo":'../../images/Optiid.svg'
        #     },
        #     {
        #     "service":"Payroll",
        #     "status":instance.is_payroll,
        #     "logo":'../../images/Payroll.svg'
        #     },
        #     {
        #     "service":"Rassasy",
        #     "status":instance.is_rassasy,
        #     "logo":'../../images/Rassasy.svg'
        #     },
        #     {
        #     "service":"Faera",
        #     "status":instance.is_faera,
        #     "logo":'../../images/Faera.svg'
        #     },
        # ]
        response_data = {
            "StatusCode": 6000,
            "data": data,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "data":[]

        }

    return Response(response_data, status=status.HTTP_200_OK)
    # return response


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def get_user_datas(request):
    user_id = request.data['user_id']
    if User.objects.filter(id=user_id).exists():
        user = User.objects.get(id=user_id)
        customer = Customer.objects.filter(user=user).first()
        profile_pic = None
        if customer.photo:
            profile_pic = getBaseUrl("media_url") + customer.photo.url
        address = ""
        if customer.Address and not customer.Address == "null":
            address = customer.Address
        address1 = ""
        if customer.Address1 and not customer.Address1 == "null":
            address1 = customer.Address1
        
        countryid = ""
        countryName = ""
        if customer.Country:
            countryid= customer.Country.id,
            countryName= customer.Country.Country_Name,

        data = {
            "first_name": user.first_name,
            "middle_name": customer.MiddleName,
            "last_name": user.last_name,
            "profile_pic": profile_pic,
            "email": user.email,
            "countryid": countryid,
            "countryName": countryName,
            "phone": customer.Phone,
            "address": address,
            "address1": address1,
        }

        response_data = {
            "StatusCode": 6000,
            "data": data,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message": 'user not found'

        }

    return Response(response_data, status=status.HTTP_200_OK)



@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def account_service_status(request):
    if UserAccountServices.objects.filter(user__id=request.user.id).exists():
        service = request.data['service']
        password = request.data['password']
        instance = UserAccountServices.objects.get(user__id=request.user.id)
        username = instance.user.username
        user = authenticate(username=username,password=password)
        if user is not None and service:
            if service == "Viknbooks":
                if instance.is_viknbooks:
                    instance.is_viknbooks = False
                    instance.is_rassasy = False
                    instance.is_faera = False
                else:
                    instance.is_viknbooks = True
                    instance.is_rassasy = True
                    instance.is_faera = True
            elif service == "Task Manager":
                if instance.is_task:
                    instance.is_task = False
                else:
                    instance.is_task = True
            elif service == "Payroll":
                if instance.is_payroll:
                    instance.is_payroll = False
                else:
                    instance.is_payroll = True
            elif service == "Rassasy":
                if instance.is_rassasy:
                    instance.is_rassasy = False
                else:
                    instance.is_rassasy = True
            elif service == "Faera":
                if instance.is_faera:
                    instance.is_faera = False
                else:
                    instance.is_faera = True
                
            instance.save()
            response_data = {
                "StatusCode": 6000,
                "message": "updated successfully",
            }
        else:
            response_data = {
                "StatusCode": 6001,
                "message":"Password is incorrect"
            }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":"error"

        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def profile_update(request):
    user_id = request.data['user_id']
    firstname = request.data['firstname']
    middlename = request.data['middlename']
    lastname = request.data['lastname']
    email = request.data['email']
    country = request.data['country']
    phone = request.data['phone']
    address1 = request.data['address1']
    address2 = request.data['address2']
    profile_pic = request.data['profile_pic']
    country_ins = None
    if country:
        country_ins = Country.objects.get(id=country)
    if User.objects.filter(id=user_id).exists():
        user = User.objects.get(id=user_id)
        user.first_name = firstname
        user.last_name = lastname
        user.email = email
        user.save()
        customer = Customer.objects.filter(user=user).first()
        customer.photo = profile_pic
        customer.MiddleName = middlename
        customer.Country = country_ins
        customer.Phone = phone
        customer.Address = address1
        customer.Address1 = address2
        customer.save()

        response_data = {
            "StatusCode": 6000,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message": 'user not found'

        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def account_delete(request):
    username = request.data['username']
    current_password = request.data['current_password']
    if username and current_password:
        user = authenticate(username=username,password=current_password)
        try:
            if user is not None:
                print(user,"************************",username,current_password)
                email = str("!!@")+user.email
                username = str("!!@")+user.username
                user.email = email
                user.username = username
                user.is_active = False
                user.save()
                message = "Account Deleted Successfully"
                StatusCode = 6000
            else:
                message = "Password Incorrect"
                StatusCode = 6001
        except:
            message = "Password Incorrect"
            StatusCode = 6001

        response_data = {
            "StatusCode": StatusCode,
            "message": message,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":'Please Fill All The Fields'

        }

    return Response(response_data, status=status.HTTP_200_OK)

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def send_feedback(request):
    full_name = request.data['full_name']
    username = request.data['username']
    email = request.data['email']
    phone = request.data['phone']
    feedback = request.data['feedback']
    content = {
        "username": username,
        "phone": phone,
        "feedback": feedback,
        "email": email,
        "full_name": full_name
    }
    send_mail = "support@vikncodes.com"
    send_email(send_mail, request, content, "email/user_feedback.html")
    response_data = {"StatusCode": 6000}
    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def change_account_ownership(request):
    companyid = request.data['companyid']
    new_owner_username = request.data['new_owner_username']
    username = request.data['username']
    current_password = request.data['current_password']
    if username and current_password and companyid:
        a = User.objects.filter(username=username)
        print(a)
        user = authenticate(username=username,password=current_password)
        print(user,"***********8")
        try:
            if user is not None:
                new_owner_user = User.objects.get(username=new_owner_username)
                send_mail_change_ownership(new_owner_user,user, companyid)
                # user.email = email
                # user.username = username
                # user.is_active = False
                # user.save()
                print(new_owner_user,"************************",username,new_owner_username)
                message = "Owner Changed Successfully"
                StatusCode = 6000
            else:
                message = "Password Incorrect"
                StatusCode = 6001
        except:
            message = "Password Incorrect"
            StatusCode = 6001

        response_data = {
            "StatusCode": StatusCode,
            "message": message,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":'Please Fill All The Fields'

        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["GET"])
@permission_classes((AllowAny,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def confirm_ownership(request):
    companyid = request.GET.get('companyid')
    new_owner_userid = request.GET.get('new_owner_userid')
    user_id = request.GET.get('user_id')
    if user_id and new_owner_userid and companyid:
        
        try:
            new_owner = User.objects.get(id=new_owner_userid)
            CompanySettings.objects.filter(pk=companyid).update(owner=new_owner)
            
            # update owner in viknbooks
            query_for_update_owner(new_owner_userid,companyid)

            return redirect('http://localhost:3000/')
            
        except:
            message = "failed"
            StatusCode = 6001

        response_data = {
            "StatusCode": StatusCode,
            "message": message,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":'Falied to load this page'

        }

    return Response(response_data, status=status.HTTP_200_OK)


@api_view(["POST"])
@permission_classes((IsAuthenticated,))
@authentication_classes((JWTTokenUserAuthentication,))
@renderer_classes((JSONRenderer,))
def delete_organisation(request):
    new_owner_username = request.data['new_owner_username']
    username = request.data['username']
    current_password = request.data['current_password']
    if username and current_password:
        user = authenticate(username=username,password=current_password)
        try:
            if user is not None:
                print(user,"************************",username,new_owner_username)
                
                # user.email = email
                # user.username = username
                # user.is_active = False
                # user.save()
                message = "Organisation Deleted Successfully"
                StatusCode = 6000
            else:
                message = "Password Incorrect"
                StatusCode = 6001
        except:
            message = "Password Incorrect"
            StatusCode = 6001

        response_data = {
            "StatusCode": StatusCode,
            "message": message,
        }
    else:
        response_data = {
            "StatusCode": 6001,
            "message":'Please Fill All The Fields'

        }

    return Response(response_data, status=status.HTTP_200_OK)


