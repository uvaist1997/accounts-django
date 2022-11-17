from rest_framework import serializers
from main.models import Customer, Devices, RecentActivities

class CustomerSerializer(serializers.ModelSerializer):
    username = serializers.SerializerMethodField()
    UserID = serializers.SerializerMethodField()
    progress_rate = serializers.SerializerMethodField()
    MemberType = serializers.SerializerMethodField()
    MemberUserID = serializers.SerializerMethodField()
    email = serializers.SerializerMethodField()
    user_email = serializers.SerializerMethodField()

    class Meta:
        model = Customer
        fields = (
            "username",
            "UserID",
            "progress_rate",
            "MemberType",
            "MemberUserID",
            "email",
            "user_email"
        )

    def get_username(self, instance):
        if instance.user:
            return instance.user.username
        else:
            return ""
        
    def get_email(self, instance):
        if instance.user:
            email = instance.user.email
            return email
        else:
            return ""
        
    def get_user_email(self, instance):
        if instance.user:
            username = instance.user.username
            email = instance.user.email
            result = str(username) + "(" + str(email) + ")"
            return result
        else:
            return ""
        
    def get_UserID(self, instance):
        if instance.user:
            return instance.user.id
        else:
            return ""
        
    def get_progress_rate(self, instance):
        return 0
    
    def get_MemberType(self, instance):
        return "member"
    
    def get_MemberUserID(self, instance):
        if instance.user:
            return instance.user.id
        else:
            return ""


   


class LoginSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)


class RegisterSerializer(serializers.Serializer):
    firstname = serializers.CharField(max_length=50)
    lastname = serializers.CharField(max_length=50)
    username = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)
    phone = serializers.CharField(max_length=100)

class EditSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=50)
    firstname = serializers.CharField(max_length=50)
    lastname = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)
    phone = serializers.CharField(max_length=100)


class SignupSerializer(serializers.Serializer):
    first_name = serializers.CharField(max_length=50)
    # last_name = serializers.CharField(max_length=50)
    username = serializers.CharField(max_length=100)
    email = serializers.EmailField(max_length=50)
    password1 = serializers.CharField(max_length=100)
    password2 = serializers.CharField(max_length=100)
    phone = serializers.CharField(max_length=50)
    country = serializers.CharField(max_length=50)

class UsernameEmailSerializer(serializers.Serializer):
    data = serializers.CharField()

class ResetPasswordSerializer(serializers.Serializer):
    new_password1 = serializers.CharField()
    new_password2 = serializers.CharField()


class RecentActivitiesSerializer(serializers.ModelSerializer):
    date_place = serializers.SerializerMethodField()

    class Meta:
        model = RecentActivities
        fields = ('id','date_place','user', 'date', 'device', 'activity', 'device_os','device_country','device_city')


    def get_date_place(self, instances):
        formatDate = instances.date.strftime("%d %B-")
        device_country = ""
        device_state = ""
        if instances.device_state:
            device_state = instances.device_state
        if instances.device_country:
            device_country = instances.device_country
            
        city_country =",".join([device_state,device_country])
        
        date_place = formatDate+str(city_country)

        return date_place

class DevicesSerializer(serializers.ModelSerializer):

    class Meta:
        model = Devices
        fields = ('id', 'user', 'date', 'device', 'device_name', 'device_os',)
        