from audioop import add
from django.db import models
import uuid
from django.utils.translation import gettext_lazy as _
# Create your models here.


class BaseModel(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)
    UpdatedUserID = models.BigIntegerField(blank=True, null=True)
    CreatedDate = models.DateTimeField(db_index=True, auto_now_add=True)
    UpdatedDate = models.DateTimeField(auto_now_add=True)

    class Meta:
        abstract = True
        

class Country(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    CountryCode = models.CharField(max_length=128, blank=True, null=True)
    Country_Name = models.CharField(max_length=128, blank=True, null=True)
    Currency_Name = models.CharField(max_length=128, blank=True, null=True)
    Change = models.CharField(max_length=128, blank=True, null=True)
    Symbol = models.CharField(max_length=128, blank=True, null=True)
    FractionalUnits = models.DecimalField(
        default=0.00, max_digits=20, decimal_places=8, blank=True, null=True
    )
    CurrencySymbolUnicode = models.CharField(
        max_length=128, blank=True, null=True)
    ISD_Code = models.CharField(max_length=128, blank=True, null=True)
    Flag = models.ImageField(upload_to="country-flags/", blank=True, null=True)
    Tax_Type = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        db_table = "country_country"
        verbose_name = _("country")
        verbose_name_plural = _("countries")
        ordering = ("Country_Name",)

    def __unicode__(self):
        return str(self.Country_Name)
        # return smart_text(self.Country_Name)


class State(models.Model):
    Country = models.ForeignKey(
        "main.Country", on_delete=models.CASCADE, blank=True, null=True
    )
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    Name = models.CharField(max_length=128, blank=True, null=True)
    State_Type = models.CharField(max_length=128, blank=True, null=True)
    State_Code = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        db_table = "state_state"
        verbose_name = _("state")
        verbose_name_plural = _("states")
        ordering = ("Name",)

    def __str__(self):
        return str(self.Name)


class Customer(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    photo = models.ImageField(upload_to="profiles/", blank=True, null=True)
    user = models.ForeignKey(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    DateOfBirth = models.DateField(blank=True, null=True)
    Country = models.ForeignKey(
        "main.Country", on_delete=models.CASCADE, blank=True, null=True
    )
    Phone = models.BigIntegerField(blank=True, null=True)
    State = models.ForeignKey(
        "main.State", on_delete=models.CASCADE, blank=True, null=True
    )
    password = models.CharField(max_length=128, blank=True, null=True)
    City = models.CharField(max_length=128, blank=True, null=True)
    Address = models.TextField(blank=True, null=True)
    Address1 = models.TextField(blank=True, null=True)
    Gender = models.CharField(max_length=150, blank=True, null=True)
    Street = models.CharField(max_length=150, blank=True, null=True)
    ZipCode = models.CharField(max_length=150, blank=True, null=True)
    Language = models.CharField(
        default="english", max_length=150, blank=True, null=True
    )
    LastLoginToken = models.CharField(max_length=1000, blank=True, null=True)
    LastLoginCompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    LastLoginTokenMobile = models.CharField(
        max_length=1000, blank=True, null=True)
    VerificationToken = models.BigIntegerField(blank=True, null=True)
    VerificationTokenTime = models.DateTimeField(blank=True, null=True)
    TimeZone = models.CharField(
        default="Asia/Calcutta", max_length=1000, blank=True, null=True
    )
    CustomTokenID = models.CharField(max_length=1000, blank=True, null=True)
    MiddleName = models.CharField(max_length=1000, blank=True, null=True)

    class Meta:
        db_table = "customer"
        verbose_name = _("Customer")
        verbose_name_plural = _("Customers")
        ordering = ("user",)

    def __unicode__(self):
        return str(self.user)


class BusinessType(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    Name = models.CharField(max_length=128, blank=True, null=True)

    class Meta:
        db_table = "admin_business_type"
        verbose_name = _("business")
        verbose_name_plural = _("business")
        ordering = ("Name",)

    def __str__(self):
        return str(self.Name)



class CompanySettings(BaseModel):
    Action = models.CharField(
        max_length=128, blank=True, null=True, default="A")
    CompanyName = models.CharField(max_length=128)
    CompanyLogo = models.ImageField(
        upload_to="company-logo/", blank=True, null=True)
    Address1 = models.CharField(max_length=150, blank=True, null=True)
    Address2 = models.CharField(max_length=150, blank=True, null=True)
    Address3 = models.CharField(max_length=150, blank=True, null=True)
    City = models.CharField(max_length=128, blank=True, null=True)
    State = models.ForeignKey(
        "main.State", on_delete=models.CASCADE, blank=True, null=True
    )
    Country = models.ForeignKey(
        "main.Country", on_delete=models.CASCADE, blank=True, null=True
    )
    PostalCode = models.CharField(max_length=128, blank=True, null=True)
    Phone = models.CharField(max_length=150, blank=True, null=True)
    Mobile = models.CharField(max_length=150, blank=True, null=True)
    Email = models.EmailField(blank=True, null=True)
    Website = models.CharField(max_length=128, blank=True, null=True)
    # Currency = models.BigIntegerField(blank=True,null=True)
    # FractionalUnit = models.BigIntegerField(blank=True,null=True)
    VATNumber = models.CharField(max_length=128, blank=True, null=True)
    GSTNumber = models.CharField(max_length=128, blank=True, null=True)
    Tax1 = models.CharField(max_length=128, blank=True, null=True)
    Tax2 = models.CharField(max_length=128, blank=True, null=True)
    Tax3 = models.CharField(max_length=128, blank=True, null=True)
    business_type = models.ForeignKey(
        "main.BusinessType", on_delete=models.CASCADE, blank=True, null=True
    )
    owner = models.ForeignKey(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    ExpiryDate = models.DateField(blank=True, null=True)
    NoOfUsers = models.PositiveIntegerField(blank=True, null=True, default=1)
    CreatedDate = models.DateTimeField(auto_now_add=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    DeletedDate = models.DateTimeField(blank=True, null=True)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)
    UpdatedUserID = models.BigIntegerField(blank=True, null=True)
    is_deleted = models.BooleanField(default=False)
    is_vat = models.BooleanField(default=False)
    is_gst = models.BooleanField(default=False)
    CRNumber = models.CharField(max_length=128, blank=True, null=True)
    CINNumber = models.CharField(max_length=128, blank=True, null=True)
    Description = models.CharField(max_length=128, blank=True, null=True)
    IsTrialVersion = models.BooleanField(default=False)
    Edition = models.CharField(
        max_length=128, default="Standard", blank=True, null=True
    )
    Permission = models.CharField(
        max_length=128, default="3", blank=True, null=True)
    IsPosUser = models.BooleanField(default=False)
    RegistrationType = models.CharField(max_length=128, blank=True, null=True)

    IsBranch = models.BooleanField(default=False)
    NoOfBrances = models.PositiveIntegerField(blank=True, null=True, default=0)
    EnableZatca = models.BooleanField(default=False)

    IsBooks = models.BooleanField(default=False)
    IsTask = models.BooleanField(default=False)
    IsPayroll = models.BooleanField(default=False)
    financial_year_period = models.CharField(
        max_length=500, blank=True, null=True
    )

    class Meta:
        db_table = "companySettings_companySettings"
        verbose_name = _("companySettings")
        verbose_name_plural = _("companySettingss")
        ordering = ("-CompanyName", "CreatedDate")

    def __unicode__(self):
        return str(self.CompanyName)


class UserType(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    CompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    ID = models.BigIntegerField()
    UserTypeName = models.CharField(max_length=128)
    Notes = models.TextField(blank=True, null=True)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)
    CreatedDate = models.DateTimeField(auto_now_add=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    Action = models.CharField(
        max_length=128, blank=True, null=True, default="A")
    IsActive = models.BooleanField(default=False)
    BranchID = models.BigIntegerField(default=1, blank=True, null=True)

    class Meta:
        db_table = "users_userType"
        verbose_name = _("userType")
        verbose_name_plural = _("usersType")
        unique_together = (
            (
                "CompanyID",
                "ID",
            ),
        )
        ordering = ("-CreatedDate", "ID")

    def __unicode__(self):
        return str(self.ID)


class UserTable(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    CompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    UserType = models.ForeignKey(
        "main.UserType", on_delete=models.CASCADE, blank=True, null=True
    )
    DefaultAccountForUser = models.BooleanField(
        default=False, blank=True, null=True)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)
    customer = models.ForeignKey(
        "main.Customer", on_delete=models.CASCADE, blank=True, null=True
    )
    CreatedDate = models.DateTimeField(auto_now_add=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    Cash_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Bank_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None
    )
    JoinedDate = models.DateField(blank=True, null=True)
    ExpiryDate = models.DateField(blank=True, null=True)
    LeaveDate = models.DateField(blank=True, null=True)
    Action = models.CharField(
        max_length=128, blank=True, null=True, default="A")
    is_owner = models.BooleanField(default=False, blank=True, null=True)
    is_web = models.BooleanField(default=True, blank=True, null=True)
    is_mobile = models.BooleanField(default=True, blank=True, null=True)
    is_pos = models.BooleanField(default=False, blank=True, null=True)
    BranchID = models.BigIntegerField(default=1, blank=True, null=True)
    show_all_warehouse = models.BooleanField(
        default=True, blank=True, null=True)
    DefaultWarehouse = models.BigIntegerField(default=1, blank=True, null=True)
   

    class Meta:
        db_table = "users_userTable"
        verbose_name = _("userTable")
        verbose_name_plural = _("usersTable")
        unique_together = (("CompanyID", "id"),)
        ordering = ("-CreatedDate", "id")

    def __unicode__(self):
        return str(self.ID)


class FinancialYear(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    CompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    FinancialYearID = models.BigIntegerField()
    Action = models.CharField(
        max_length=128, blank=True, null=True, default="A")
    FromDate = models.DateField(blank=True, null=True)
    ToDate = models.DateField(blank=True, null=True)
    IsClosed = models.BooleanField(default=False)
    Notes = models.TextField(blank=True, null=True)
    CreatedDate = models.DateTimeField(auto_now_add=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)

    class Meta:
        db_table = "financialYear_financialYear"
        verbose_name = _("financialYear")
        verbose_name_plural = _("financialYears")
        ordering = ("-FinancialYearID",)

    def __unicode__(self):
        return str(self.FinancialYearID)


class InviteUsers(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    Email = models.CharField(max_length=128, blank=True, null=True)
    CompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    InvitedUserID = models.BigIntegerField(blank=True, null=True)
    InvitedDate = models.DateField(blank=True, null=True)
    Status = models.CharField(max_length=128, blank=True, null=True)
    UserType = models.ForeignKey(
        "main.UserType", on_delete=models.CASCADE, blank=True, null=True
    )
    DefaultAccountForUser = models.BooleanField(
        default=False, blank=True, null=True)
    Cash_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Bank_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None
    )
    ExpiryDate = models.DateField(blank=True, null=True)
    is_web = models.BooleanField(default=True, blank=True, null=True)
    is_mobile = models.BooleanField(default=True, blank=True, null=True)
    is_pos = models.BooleanField(default=False, blank=True, null=True)
    BranchID = models.BigIntegerField(default=1, blank=True, null=True)
    show_all_warehouse = models.BooleanField(
        default=True, blank=True, null=True)
    DefaultWarehouse = models.BigIntegerField(default=1, blank=True, null=True)

    class Meta:
        db_table = "invitedUsers_invitedUsers"
        verbose_name = _("invitedUsers")
        verbose_name_plural = _("invitedUsers")
        ordering = ("id",)

    def __str__(self):
        return str(self.id)



class User_Log(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    TransactionID = models.CharField(max_length=128, blank=True, null=True)
    CompanyID = models.ForeignKey(
        "main.CompanySettings", on_delete=models.CASCADE, blank=True, null=True
    )
    UserType = models.ForeignKey(
        "main.UserType", on_delete=models.CASCADE, blank=True, null=True
    )
    DefaultAccountForUser = models.BooleanField(default=False)
    CreatedUserID = models.BigIntegerField(blank=True, null=True)
    customer = models.ForeignKey(
        "main.Customer", on_delete=models.CASCADE, blank=True, null=True
    )
    CreatedDate = models.DateTimeField(auto_now_add=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    Cash_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Bank_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Account = models.BigIntegerField(blank=True, null=True, default=None)
    Sales_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Account = models.BigIntegerField(
        blank=True, null=True, default=None)
    Purchase_Return_Account = models.BigIntegerField(
        blank=True, null=True, default=None
    )
    JoinedDate = models.DateTimeField(blank=True, null=True)
    ExpiryDate = models.DateField(blank=True, null=True)
    LeaveDate = models.DateTimeField(blank=True, null=True)
    Action = models.CharField(
        max_length=128, blank=True, null=True, default="A")
    is_owner = models.BooleanField(default=False, blank=True, null=True)
    is_web = models.BooleanField(default=True, blank=True, null=True)
    is_mobile = models.BooleanField(default=True, blank=True, null=True)
    is_pos = models.BooleanField(default=False, blank=True, null=True)
    BranchID = models.BigIntegerField(default=1, blank=True, null=True)
    show_all_warehouse = models.BooleanField(
        default=True, blank=True, null=True)
    DefaultWarehouse = models.BigIntegerField(default=1, blank=True, null=True)
    class Meta:
        db_table = "users_userTableLog"
        verbose_name = _("userTableLog")
        verbose_name_plural = _("usersTableLog")
        ordering = ("-CreatedDate", "id")

    def __unicode__(self):
        return str(self.id)


class AccountCustomerServices(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    LastTokenID = models.TextField(blank=True, null=True)
    Service = models.CharField(max_length=250, blank=True, null=True)
    

    class Meta:
        db_table = "account_customer_service"
        verbose_name = _("account_customer_service")
        verbose_name_plural = _("account_customer_service")
        ordering = ("id",)

    def __str__(self):
        return str(self.id)


class ServiceVersionDetails(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    Version = models.CharField(max_length=150, blank=True, null=True)
    Message = models.CharField(max_length=150, blank=True, null=True)
    is_updation = models.BooleanField(default=False, blank=True, null=True)
    is_web = models.BooleanField(default=False, blank=True, null=True)
    is_mobile = models.BooleanField(default=False, blank=True, null=True)
    UpdatedDate = models.DateTimeField(blank=True, null=True)
    Service = models.CharField(max_length=250, blank=True, null=True)

    class Meta:
        db_table = "version_details"
        verbose_name = _("version_details")
        verbose_name_plural = _("version_details")
        ordering = ("id",)

    def __unicode__(self):
        return str(self.id)

class RecentActivities(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    date = models.DateField(blank=True, null=True)
    # time_zone = models.CharField(
    #     default="Asia/Calcutta", max_length=256, blank=True, null=True
    # )
    device = models.CharField(max_length=128, blank=True, null=True)
    device_os = models.CharField(max_length=128, blank=True, null=True)
    device_country = models.CharField(max_length=128, blank=True, null=True)
    device_state = models.CharField(max_length=128, blank=True, null=True)
    device_city = models.CharField(max_length=128, blank=True, null=True)
    activity = models.CharField(max_length=128, blank=True, null=True)
    service = models.CharField(max_length=128, blank=True, null=True)
   
    class Meta:
        db_table = "recent_activities"
        verbose_name = _("recent_activities")
        verbose_name_plural = _("recent_activitiess")
        ordering = ("user",)

    def __unicode__(self):
        return str(self.user)

class Devices(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    date = models.DateField(blank=True, null=True)
    
    device = models.CharField(max_length=128, blank=True, null=True)
    device_name = models.CharField(max_length=128, blank=True, null=True)
    device_os = models.CharField(max_length=128, blank=True, null=True)
   
    class Meta:
        db_table = "device"
        verbose_name = _("device")
        verbose_name_plural = _("devices")
        ordering = ("user",)

    def __unicode__(self):
        return str(self.user)


class UserAccountServices(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.OneToOneField(
        "auth.User", related_name="user%(class)s_objects", on_delete=models.CASCADE
    )
    is_viknbooks = models.BooleanField(default=True)
    is_task = models.BooleanField(default=True)
    is_payroll = models.BooleanField(default=True)
    is_rassasy = models.BooleanField(default=True)
    is_faera = models.BooleanField(default=True)
    
    class Meta:
        db_table = "user_account_service"
        verbose_name = _("user_account_service")
        verbose_name_plural = _("user_account_services")
        ordering = ("user",)

    def __unicode__(self):
        return str(self.user)