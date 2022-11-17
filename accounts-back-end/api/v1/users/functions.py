from datetime import datetime
from ipaddress import ip_address
import json
import requests
from django.core.exceptions import ValidationError
from django.core.validators import validate_email
from django.contrib.auth.models import User
from main.models import Devices, RecentActivities, UserAccountServices


def validate_email_address(email):
    try:
        validate_email(email)
        return True
    except ValidationError:
        return False

def get_ip():
    response = requests.get('https://api64.ipify.org?format=json').json()
    return response["ip"]


def get_client_ip(request):
    x_forwarded_for = request.META.get('HTTP_X_FORWARDED_FOR')
    if x_forwarded_for:
        ip = x_forwarded_for.split(',')[0]
    else:
        ip = request.META.get('REMOTE_ADDR')
    return ip

    
def get_location():
    # send_url = "http://api.ipstack.com/check?access_key=660a6f8a8892c4373d1984b09d69ff89"
    geo_req = requests.get(send_url)
    geo_json = json.loads(geo_req.text)
    city = geo_json['city']
    region_name = geo_json['region_name']
    country_name = geo_json['country_name']
    # response = requests.get(f'https://ipapi.co/json/').json()
    location_data = {
        "ip": ip_address,
        "city": city,
        "region": region_name,
        "country": country_name,
    }
    return location_data


def set_divice_details(request):
    device = ""
    if request.user_agent.is_mobile: 
        device = "Mobile"
    if request.user_agent.is_tablet: 
        device = "Tab"
    if request.user_agent.is_pc: 
        device = "Pc"
    if request.user_agent.is_bot: 
        device = "Bot"
    # Accessing user agent's browser attributes
    request.user_agent.browser.family  # returns 'Mobile Safari'
    # Operating System properties
    os = request.user_agent.os.family  # returns 'iOS'
    # Device properties
    device_name = request.user_agent.device.family  # returns 'iPhone'
    Devices.objects.create(
        user=request.user,
        date=datetime.now().date(),
        device=device,
        device_os=os,
        device_name=device_name,
    )


def create_user_account_service(user):
    account, created= UserAccountServices.objects.get_or_create(user=user)
 
        
def set_recent_activities(request,activity,service):
    city = ""
    country = ""
    region = ""
    device = ""
    if request.user_agent.is_mobile: 
        device = "Mobile"
    if request.user_agent.is_tablet: 
        device = "Tab"
    if request.user_agent.is_pc: 
        device = "Pc"
    if request.user_agent.is_bot: 
        device = "Bot"

    # Accessing user agent's browser attributes
    request.user_agent.browser.family  # returns 'Mobile Safari'
    # Operating System properties
    os = request.user_agent.os.family  # returns 'iOS'
    # Device properties
    device_name = request.user_agent.device.family  # returns 'iPhone'
    user_inastance = User.objects.get(id=request.user.id)

    if 'city' in request.COOKIES:
        city = request.COOKIES['city']
    if 'country' in request.COOKIES:
        country = request.COOKIES['country']
    if 'region' in request.COOKIES:
        region = request.COOKIES['region']
    if service == "viknbooks_domain":
        service = "Viknbooks"
    RecentActivities.objects.create(
        user=user_inastance,
        date=datetime.now().date(),
        service=service,
        device=device,
        device_os=os,
        activity=activity,
        device_country=country,
        device_city=city,
        device_state=region,
    )