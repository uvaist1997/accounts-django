import datetime
from random import randint
from django.shortcuts import get_object_or_404
from main.models import CompanySettings, Customer
from django.utils.encoding import force_bytes
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from django.template.loader import render_to_string
from django.core.mail import EmailMessage, EmailMultiAlternatives, send_mail
from pytz import timezone
from rest_framework_simplejwt.tokens import RefreshToken
import requests
import json
import platform
import socket
import re
import uuid
import psycopg2
import pandas as pd

def generate_serializer_errors(args):
    message = ""
    for key, values in args.items():
        error_message = ""
        for value in values:
            error_message += value + ","
        error_message = error_message[:-1]

        message += "%s : %s | " %(key,error_message)
    return message[:-3]


def get_company(CompanyID):
    if CompanySettings.objects.filter(id=CompanyID).exists():
        CompanyID = get_object_or_404(
            CompanySettings.objects.filter(id=CompanyID))
    else:
        CompanyID = "Company Not Found"
    return CompanyID


def generateTokenNo():
    range_start = 10**(6-1)
    range_end = (10**6)-1
    PinNo = randint(range_start, range_end)
    return PinNo

def send_mail_change_ownership(new_owner_user,user, comapnyid):
    token = ""
    # domain = "https://viknbooks.com"
    # domain = "https://vikncodes.in"
    # domain = "https://accounts.vikncodes.in"
    domain = getUrl("change_ownership")

    if Customer.objects.filter(user=user).exists():
        token = Customer.objects.filter(user=user).first().VerificationToken

    context = {
        "email": new_owner_user.email,
        "domain": domain,
        "site_name": "viknbooks.com",
        "uid": urlsafe_base64_encode(force_bytes(user.pk)),
        "user": user,
        "new_owner_user": new_owner_user,
        "token": token,
        "current_user": user.first_name + " " + user.last_name,
        "username": user.username,
        "reset_password_url": f"{domain}/?new_owner_userid={new_owner_user.id}&&user_id={user.id}&&companyid={comapnyid}",
    }

    email_html_message = render_to_string("email/change_ownership.html", context)
    subject = "Accept {title}".format(title="vikncodes.com")

    msg = EmailMultiAlternatives(
        # title:
        "Email Verification",
        # message:
        subject,
        # from:
        "noreply@somehost.local",
        # to:
        # [user.email],
        [new_owner_user.email],
    )
    msg.attach_alternative(email_html_message, "text/html")
    msg.send()


def send_mail_verification(user, request):
    token = ""
    # domain = "https://viknbooks.com"
    # domain = "https://vikncodes.in"
    # domain = "https://accounts.vikncodes.in"
    domain = getUrl("domain")

    if Customer.objects.filter(user=user).exists():
        token = Customer.objects.filter(user=user).first().VerificationToken

    context = {
        "email": user.email,
        "domain": domain,
        "site_name": "viknbooks.com",
        "uid": urlsafe_base64_encode(force_bytes(user.pk)),
        "user": user,
        "token": token,
        "current_user": user.first_name + " " + user.last_name,
        "username": user.username,
        "reset_password_url": f"{domain}/signUp-verification/{user.id}/{token}/",
    }

    email_html_message = render_to_string("email/one_time_password.html", context)
    subject = "Email Verification for {title}".format(title="viknbooks.com")

    msg = EmailMultiAlternatives(
        # title:
        "Email Verification",
        # message:
        subject,
        # from:
        "noreply@somehost.local",
        # to:
        [user.email],
    )
    msg.attach_alternative(email_html_message, "text/html")
    msg.send()
    

def send_mail_user_invitation(email, request, service):
    token = ""
    domain = getUrl("domain")
    site_name = "viknbooks.com"
    if service == "task_manager":
        site_name = "task.vikncodes.in"

    context = {
        "email": email,
        "domain": domain,
        "site_name": site_name,
        "reset_password_url": f"{domain}sign-up?service={service}",
    }

    email_html_message = render_to_string(
        "email/user_invitation.html", context)
    subject = "User Invitation for {title}".format(title=site_name)

    msg = EmailMultiAlternatives(
        # title:
        "Email Verification",
        # message:
        subject,
        # from:
        "noreply@somehost.local",
        # to:
        [email],
    )
    msg.attach_alternative(email_html_message, "text/html")
    msg.send()


def ConvertedTime(Time):
    import datetime
    import pytz
    from datetime import datetime, timezone

    dtobj_time = Time.replace(tzinfo=timezone.utc).astimezone(tz=None)
    return dtobj_time


def CheckTokenExpired(TimeZone, VerificationTokenTime):
    is_token_expired = False
    today = datetime.datetime.now()
    today = datetime.datetime.strptime(
        str(today).split(".")[0], "%Y-%m-%d %H:%M:%S")
    converted_today = ConvertedTime(today)
    VerificationTokenTime = datetime.datetime.strptime(
        str(VerificationTokenTime).split(".")[0], "%Y-%m-%d %H:%M:%S")
    converted_token_time = ConvertedTime(VerificationTokenTime)
    diff = converted_today - converted_token_time
    mint_diff = diff.seconds / 60
    if mint_diff > 5:
        is_token_expired = True
    return is_token_expired


def getBaseUrl(service):
    BaseUrl = "http://localhost:8000/"
    # BaseUrl = "https://api.accounts.vikncodes.com/"
    # BaseUrl = "https://api.accounts.vikncodes.in/"
    if service == "task_manager":
        BaseUrl = "http://localhost:8001/"
        # BaseUrl = "https://api.task.vikncodes.com/"
        # BaseUrl = "https://api.task.vikncodes.in/"
    elif service == "viknbooks":
        BaseUrl = "http://localhost:8002/api/v10/"
        # BaseUrl = "https://www.api.viknbooks.rabbaniperfume.com/api/v10/"
        # BaseUrl = "https://www.api.vikncodes.in/api/v10/"
        # BaseUrl = "https://www.api.viknbooks.com/api/v10/"
    elif service == "viknbooks_domain":
        BaseUrl = "http://localhost:8002/"
        # BaseUrl = "https://www.api.viknbooks.rabbaniperfume.com/"
        # BaseUrl = "https://www.api.vikncodes.in/"
        # BaseUrl = "https://www.api.viknbooks.com/"
    elif service == "media_url":
        BaseUrl = "http://localhost:8000"
        # BaseUrl = "https://api.accounts.vikncodes.com/"
        # BaseUrl = "https://api.accounts.vikncodes.in/"
    return BaseUrl


def getUrl(action):
    url = None
    if action == "reset_password_url":
        url = "http://localhost:3000/password-confirm"
        # url = "https://accounts.vikncodes.com/password-confirm"
        # url = "https://accounts.vikncodes.in/password-confirm"
    elif action == "domain":
        # url = "https://accounts.vikncodes.in"
        # url = "https://accounts.vikncodes.com"
        url = "http://localhost:3000"
    elif action == "sub_domain":
        # url = ".viknbooks.com"
        # url = ".rabbaniperfume.com"
        url = ".vikncodes.in"
        # url = "localhost"
        url = None
    elif action == "request_url":
        # url = "https://api.viknbooks.com/api/v10/accounts"
        # url = "https://api.vikncodes.in/api/v10/accounts"
        # url = "https://www.api.viknbooks.rabbaniperfume.com/api/v10/accounts"
        url = "http://localhost:8002/api/v10/accounts"
    elif action == "change_ownership":
        # url = "https://api.vikncodes.com/api/v1/users/confirm-ownership/"
        # url = "https://api.vikncodes.in/api/v1/users/confirm-ownership/"
        url = "http://localhost:8000/api/v1/users/confirm-ownership"
    return url


def get_country_time(date, country="Saudi Arabia"):
    invoice_time = None
    if country == "India":
        invoice_time = date.astimezone(timezone("Asia/Kolkata"))
    elif country == "Saudi Arabia":
        invoice_time = date.astimezone(timezone("Asia/Riyadh"))
    elif country == "Kuwait":
        invoice_time = date.astimezone(timezone("Asia/Kuwait"))
    elif country == "Oman":
        invoice_time = date.astimezone(timezone("Asia/Muscat"))
    elif country == "United Arab Emirates":
        invoice_time = date.astimezone(timezone("Asia/Dubai"))
    elif country == "Qatar":
        invoice_time = date.astimezone(timezone("Asia/Qatar"))

    time = ""
    if invoice_time:
        time = invoice_time.strftime("%I:%M %p")
    return [invoice_time, time]


def converted_float(Val):
    if Val == None or Val == '':
        result = 0
    else:
        result = float(Val)
    return result


def TokenResetPassword(token, user):
    today = datetime.datetime.now()
    CustomToken = generateTokenNo()
    if Customer.objects.filter(CustomTokenID=CustomToken).exists():
        CustomToken = generateTokenNo()
    
    if Customer.objects.filter(user=user).exists():
        customer = Customer.objects.filter(user=user).first()
        customer.CustomTokenID = token
        customer.VerificationTokenTime = today
        customer.VerificationToken = CustomToken
        customer.save()
    return CustomToken


def GenerateTokenForReset(token):
    today = datetime.datetime.now()
    Token = []
    if Customer.objects.filter(VerificationToken=token).exists():
        customer = Customer.objects.filter(VerificationToken=token).first()
        token = customer.CustomTokenID
        VerificationDateTime = customer.VerificationTokenTime
        coutry_name = ""
        if customer.Country:
            coutry_name = customer.Country.Country_Name
        VerificationDateTime = get_country_time(
            VerificationDateTime, coutry_name)[0]
        today = get_country_time(
            today, coutry_name)[0]
        
        if VerificationDateTime:
            if str(today.date()) == str(VerificationDateTime.date()):
                VerificationDateTime = VerificationDateTime.replace(tzinfo=None)
                today = today.replace(tzinfo=None)
                time_deff = today - VerificationDateTime
                time_deff_mins = time_deff.seconds % 3600 / 60.0
                if converted_float(time_deff_mins) < 5:
                    customer.VerificationToken = 0
                    customer.save()
                    result = token.split("/")
                    Token = [result[0], result[1]]
    return Token


def CreateServiceUser(user, service,password):
    today = datetime.datetime.now()
    token = RefreshToken.for_user(user)
    service_header = {
        'Content-Type': 'application/json',
        'Authorization': f"Bearer {token.access_token}"
    }
    if service == "viknbooks":
        service = "viknbooks_domain"
        base_url = getBaseUrl(service)
        service_url = base_url + "users/create-user"
        service_data = {
            "id": user.id,
            "role": "",
            "password": password,
            "username": user.username,
            "first_name": user.first_name,
            "last_name": user.last_name,
            "email": user.email,
            "last_login": str(user.last_login),
        }
        # new_data = service_data.update(data)
        response_service = requests.post(
            service_url, headers=service_header, data=json.dumps(service_data))
    return ""


def get_visitors_details(request):
    is_mobile = request.user_agent.is_mobile
    is_pc = request.user_agent.is_pc
    browser = request.user_agent.browser.family
    device = request.user_agent.device.family
    os = request.user_agent.os.family
    # test = platform.machine()
    # print(test,"test")
    # print(platform.platform())
    info = {}
    info['platform'] = platform.system()
    info['platform-release'] = platform.release()
    info['platform-version'] = platform.version()
    info['architecture'] = platform.machine()
    info['hostname'] = socket.gethostname()
    info['ip-address'] = socket.gethostbyname(socket.gethostname())
    info['mac-address'] = ':'.join(re.findall('..', '%012x' % uuid.getnode()))
    info['processor'] = platform.processor()
    info['is_mobile'] = is_mobile
    info['is_pc'] = is_pc
    info['browser'] = browser
    info['device'] = device
    info['os'] = os
    # from pprint import pprint
    # pprint(request.META)
    print(info, "info")
    return info


def send_email(email, request, content,template):
    domain = getUrl("domain")
    site_name = "vikncodes.com"

    context = {
        "email": email,
        "domain": domain,
        "site_name": site_name,
        "content": content
    }

    email_html_message = render_to_string(
        template, context)
    subject = "User FeedBack for {title}".format(title=site_name)

    msg = EmailMultiAlternatives(
        # title:
        "Email Verification",
        # message:
        subject,
        # from:
        "noreply@somehost.local",
        # to:
        [email],
    )
    msg.attach_alternative(email_html_message, "text/html")
    msg.send()
    

def query_for_create_company():

    connection = psycopg2.connect(
    database="server_viknbooks", user='vikncodes', password='vikncodes123', host='127.0.0.1', port= '5432'
    )
    connection1 = psycopg2.connect(
    database="accounts", user='vikncodes', password='vikncodes123', host='127.0.0.1', port= '5432'
    )
    # comp = CompanySettings.objects.filter(owner__id='449',CompanyName="Uvais T").values()[0]
    cursor = connection1.cursor()
    cursor1 = connection.cursor()
    cursor1.execute("""
      SELECT * FROM public."companySettings_companySettings" WHERE "id"='9a85d993-9faf-4d8f-9e40-fe0c83e37019'
     """)  
    data = cursor1.fetchone()
    df = pd.DataFrame(data)
 

    dict = df.to_dict('dict')
    dict = {
        "id":data[0],
        "Action":data[1],
        "CompanyName":data[2],
        "CompanyLogo":data[3],
        "Address1":data[4],
        "Address2":data[5],
        "Address3":data[6],
        "City":data[7],
        "PostalCode":data[8],
        "Phone":data[9],
        "Mobile":data[10],
        "Email":data[11],
        "Website":data[12],
        "VATNumber":data[13],
        "GSTNumber":data[14],
        "Tax1":data[15],
        "Tax2":data[16],
        "Tax3":data[17],
        "ExpiryDate":data[18],
        "NoOfUsers":data[19],
        "CreatedDate":data[20],
        "UpdatedDate":data[21],
        "CreatedUserID":data[22],
        "UpdatedUserID":data[23],
        "is_deleted":data[24],
        "CRNumber":data[25],

        "Description":data[26],
        "Country_id":data[27],

        "State_id":data[28],
        "business_type_id":data[29],
        "owner_id":data[30],
        "is_gst":data[31],
        "is_vat":data[32],
        "CINNumber":data[33],
        "DeletedDate":data[34],
        "Edition":data[35],
        "IsTrialVersion":data[36],
        "Permission":data[37],
        "IsPosUser":data[38],
        "RegistrationType":data[39],
        "IsBranch":data[40],
        "NoOfBrances":data[41],
        "EnableZatca":data[42],
        "financial_year_period":data[43],
    }
    cursor.execute("""
      INSERT INTO public."companySettings_companySettings" VALUES (%(id)s,%(Action)s,%(CompanyName)s,%(CompanyLogo)s, %(Address1)s,%(Address2)s,%(Address3)s,%(City)s,%(PostalCode)s,%(Phone)s,%(Mobile)s,%(Email)s,%(Website)s,%(VATNumber)s,%(GSTNumber)s,%(Tax1)s,%(Tax2)s,%(Tax3)s,%(ExpiryDate)s,%(NoOfUsers)s,%(CreatedDate)s,%(UpdatedDate)s,%(DeletedDate)s,%(CreatedUserID)s,%(UpdatedUserID)s,%(is_deleted)s,%(is_vat)s,%(is_gst)s,%(CRNumber)s,%(CINNumber)s,%(Description)s,%(IsTrialVersion)s,%(Edition)s,%(Permission)s,%(IsPosUser)s,%(RegistrationType)s,%(IsBranch)s,%(NoOfBrances)s,%(Country_id)s,%(State_id)s,%(business_type_id)s,%(owner_id)s,%(EnableZatca)s,%(financial_year_period)s)
        
     """,dict)  
    # cursor.execute("""
    #   INSERT INTO public."companySettings_companySettings" VALUES (%(0)s,%(1)s,%(2)s,%(3)s, %(Address1)s,%(Address2)s,%(Address3)s,%(City)s,%(PostalCode)s,%(Phone)s,%(Mobile)s,%(Email)s,%(Website)s,%(VATNumber)s,%(GSTNumber)s,%(Tax1)s,%(Tax2)s,%(Tax3)s,%(ExpiryDate)s,%(NoOfUsers)s,%(CreatedDate)s,%(UpdatedDate)s,%(DeletedDate)s,%(CreatedUserID)s,%(UpdatedUserID)s,%(is_deleted)s,%(is_vat)s,%(is_gst)s,%(CRNumber)s,%(CINNumber)s,%(Description)s,%(IsTrialVersion)s,%(Edition)s,%(Permission)s,%(IsPosUser)s,%(RegistrationType)s,%(IsBranch)s,%(NoOfBrances)s,%(Country_id)s,%(State_id)s,%(business_type_id)s,%(owner_id)s,%(EnableZatca)s,%(financial_year_period)s)
        
    #  """,data[0])  
     
    print("***************************")
    cursor.close() 


def query_for_update_owner(owner_userid,companyid):
    try:
        connection = psycopg2.connect(
        database="server_viknbooks", user='vikncodes', password='vikncodes123', host='127.0.0.1', port= '5432'
        )
        cursor = connection.cursor()
        postgres_comp_query = """ UPDATE public."companySettings_companySettings" SET "owner_id"=%(owner_id)s WHERE id = %(companyid)s"""

        dict = {
            "owner_id":owner_userid,
            "companyid":companyid,
        }
        
        cursor.execute(postgres_comp_query,dict)
        connection.commit()

    except (Exception, psycopg2.Error) as error:
        print("Failed to insert record into mobile table", error)

    finally:
        # closing database connection.
        if connection:
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")