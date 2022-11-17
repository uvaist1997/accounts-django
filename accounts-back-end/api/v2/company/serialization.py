from rest_framework import serializers

from main.models import BusinessType, CompanySettings, Country, FinancialYear, UserTable,State
# from users import models

# class UserSerializer(serializers.ModelSerializer):
#     first_name = serializers.SerializerMethodField()
#     last_name = serializers.SerializerMethodField()
#     user_name = serializers.SerializerMethodField()

#     class Meta:
#         model = models.Users
#         fields = '__all__'

#     def get_user_name(self, instance):
#         if instance.user:
#             return instance.user.username
#         else:
#             return ""

#     def get_first_name(self, instance):
#         if instance.user:
#             return instance.user.first_name
#         else:
#             return ""

#     def get_last_name(self, instance):
#         if instance.user:
#             return instance.user.last_name
#         else:
#             return ""


class CompanySettingsRestSerializer(serializers.ModelSerializer):
    FromDate = serializers.SerializerMethodField()
    ToDate = serializers.SerializerMethodField()

    class Meta:
        model = CompanySettings
        fields = '__all__'
        
    def get_FromDate(self, instance):
        FromDate = ""
        if FinancialYear.objects.filter(CompanyID=instance, IsClosed=False).exists():
            FromDate = FinancialYear.objects.filter(
                CompanyID=instance, IsClosed=False).first().FromDate
        return FromDate

    def get_ToDate(self, instance):
        ToDate = ""
        if FinancialYear.objects.filter(CompanyID=instance, IsClosed=False).exists():
            ToDate = FinancialYear.objects.filter(
                CompanyID=instance, IsClosed=False).first().ToDate
        return ToDate



class LoginSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)


class RegisterSerializer(serializers.Serializer):
    firstname = serializers.CharField(max_length=50)
    lastname = serializers.CharField(max_length=50)
    username = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)
    companyid = serializers.CharField(max_length=100)
    phone = serializers.CharField(max_length=100)

class EditSerializer(serializers.Serializer):
    username = serializers.CharField(max_length=50)
    firstname = serializers.CharField(max_length=50)
    lastname = serializers.CharField(max_length=50)
    password = serializers.CharField(max_length=100)
    phone = serializers.CharField(max_length=100)
    
    
class MyCompaniesSerializer(serializers.ModelSerializer):
    # CountryName = serializers.SerializerMethodField()
    StateName = serializers.SerializerMethodField()
    company_type = serializers.SerializerMethodField()

    class Meta:
        model = CompanySettings
        fields = (
            "CompanyName",
            "id",
            "company_type",
            "ExpiryDate",
            "Permission",
            "CompanyLogo",
            "Edition",
            "IsPosUser",
            "StateName",
            "Email",
            "CreatedUserID"
        )

    # def get_CountryName(self, instances):
    #     CountryName = instances.Country.Country_Name
    #     return CountryName

    def get_company_type(self, instances):
        company_type = "personal"
        return company_type.title()

    def get_StateName(self, instances):
        StateName = instances.State.Name
        return StateName



class CompaniesSerializer(serializers.ModelSerializer):
    # CountryName = serializers.SerializerMethodField()
    # StateName = serializers.SerializerMethodField()
    Permission = serializers.SerializerMethodField()
    CompanyName = serializers.SerializerMethodField()
    company_type = serializers.SerializerMethodField()
    CompanyLogo = serializers.SerializerMethodField()
    Edition = serializers.SerializerMethodField()
    IsPosUser = serializers.SerializerMethodField()
    StateName = serializers.SerializerMethodField()
    Email = serializers.SerializerMethodField()
    id = serializers.SerializerMethodField()
    CreatedUserID = serializers.SerializerMethodField()

    class Meta:
        model = UserTable
        fields = (
            "CompanyName",
            "id",
            "company_type",
            "ExpiryDate",
            "Permission",
            "CompanyLogo",
            "Edition",
            "IsPosUser",
            "StateName",
            "Email",
            "CreatedUserID"
        )

    def get_CreatedUserID(self, instances):
        CreatedUserID = instances.CompanyID.CreatedUserID
        return CreatedUserID

    def get_Edition(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.Edition:
            Edition = UserTable.objects.get(pk=instances.pk).CompanyID.Edition
            return Edition
        else:
            return ""

    def get_IsPosUser(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.IsPosUser:
            IsPosUser = UserTable.objects.get(
                pk=instances.pk).CompanyID.IsPosUser
            return IsPosUser
        else:
            return False

    def get_CompanyName(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.CompanyName:
            CompanyName = UserTable.objects.get(
                pk=instances.pk).CompanyID.CompanyName
            return CompanyName
        else:
            return ""

    def get_Permission(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.Permission:
            Permission = UserTable.objects.get(
                pk=instances.pk).CompanyID.Permission
            return Permission
        else:
            return ""

    def get_CompanyLogo(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.CompanyLogo:
            CompanyLogo = UserTable.objects.get(
                pk=instances.pk).CompanyID.CompanyLogo
            return CompanyLogo.url
        else:
            return ""

    def get_id(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.pk:
            id = UserTable.objects.get(pk=instances.pk).CompanyID.pk
            return str(id)
        else:
            return ""

    def get_company_type(self, instances):
        company_type = "member"
        return company_type.title()

    def get_ExpiryDate(self, instances):
        if UserTable.objects.get(pk=instances.pk).ExpiryDate:
            ExpiryDate = UserTable.objects.get(pk=instances.pk).ExpiryDate
            return ExpiryDate
        else:
            return ""

    def get_StateName(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.State.Name:
            StateName = UserTable.objects.get(
                pk=instances.pk).CompanyID.State.Name
            return StateName
        else:
            return ""

    def get_Email(self, instances):
        if UserTable.objects.get(pk=instances.pk).CompanyID.Email:
            Email = UserTable.objects.get(pk=instances.pk).CompanyID.Email
            return Email
        else:
            return ""


class BusinessTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = BusinessType
        fields = ("id", "Name")


class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = '__all__'
        

class StateRestSerializer(serializers.ModelSerializer):
    Country_Name = serializers.SerializerMethodField()
    CountryCode = serializers.SerializerMethodField()

    class Meta:
        model = State
        fields = (
            "id",
            "Name",
            "State_Code",
            "State_Type",
            "Country",
            "Country_Name",
            "CountryCode",
        )

    def get_Country_Name(self, instance):
        Country_Name = instance.Country.Country_Name
        return Country_Name

    def get_CountryCode(self, instance):
        CountryCode = instance.Country.CountryCode
        return CountryCode
