from dataclasses import field
from rest_framework import serializers
from.models import *
from adminpage.models import *
from main.models import *
class ApplicationSerializers(serializers.ModelSerializer):


    class Meta:
        model=AddApplication
        fields= '__all__'

class SingleApplicationSerializers(serializers.ModelSerializer):

    single_application=serializers.SerializerMethodField()

    class Meta:
        model=AddApplication
        fields= '__all__'

    # Serializing Edition and returning both
    def get_single_application(self,instance):
        print(instance)
        
        instance=Edition.objects.filter(app=instance)
        serialized=EditionSerializers(instance,many=True)
        return serialized.data



class EditionSerializers(serializers.ModelSerializer):

    class Meta:
        model=Edition
        fields= '__all__'

class SingleEditionSerializers(serializers.ModelSerializer):

    class Meta:
        model=Edition
        fields= ['edition_name','app','price','number_of_users','add_on']

    
class BlogSerializers(serializers.ModelSerializer):

    class Meta:
        model=Blog
        fields= '__all__'


class BlogListSerializers(serializers.ModelSerializer):

    username = serializers.SerializerMethodField()

    class Meta:
        model=Blog
        fields= '__all__'
    def get_username(self,instance):
        username=User.objects.get(id=instance.created_user_id)
        return username.username


class LeadSerializers(serializers.ModelSerializer):

    class Meta:
        model=Lead
        fields= '__all__'

class LeadSerializersList(serializers.ModelSerializer):
    list_of_leads=serializers.SerializerMethodField()

    class Meta:
        model=Lead
        fields= '__all__'

    def get_list_of_leads(self,instance):
        
        instance=LeadPhoneNumbers.objects.filter(lead=instance)
        serialized=LeadPhoneNumbersSerializers(instance,many=True)

        return serialized.data

class LeadPhoneNumbersSerializers(serializers.ModelSerializer):

    class Meta:
        model=LeadPhoneNumbers
        fields= '__all__'

class ActivitySerializers(serializers.ModelSerializer):

    class Meta:
        model=AddActivity
        fields= '__all__'

class WhatsNewSerializers(serializers.ModelSerializer):

    class Meta:
        model=WhatsNew
        fields='__all__'


# RASHID MODULES

class ManualenquirieSerializer(serializers.ModelSerializer):

    class Meta:
        model=ManualEnquiries
        fields="__all__"

class ManualenquirieSerializerstatus(serializers.ModelSerializer):

    class Meta:
        model=ManualEnquiries
        fields=(
            "status",
        )

class PartnerSerializer(serializers.ModelSerializer):
    username = serializers.SerializerMethodField()
    first_name = serializers.SerializerMethodField()
    email = serializers.SerializerMethodField()
    
    class Meta:
        model=Partner
        fields="__all__"
        

    def get_username(self,instance):
        username = instance.user.username
        return username
    
    def get_first_name(self,instance):
        first_name = instance.user.first_name
        return first_name
    
    def get_email(self,instance):
        email = instance.user.email
        return email



class UserSerializer(serializers.ModelSerializer):

    class Meta:
        model=User
        fields=(
            "username",
            "first_name",
            "password",
            "email",
        )
class UserEditSerializer(serializers.ModelSerializer):

    class Meta:
        model=User
        fields=(
    
            "first_name",
            "email",
        )
class Partner_Serializer(serializers.ModelSerializer):

    class Meta:
        model=Partner
        exclude=("user",)
