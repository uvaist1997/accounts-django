from distutils.command.upload import upload
from distutils.text_file import TextFile
from email.policy import default
from random import choices
from uuid import UUID
from django.db import models
import uuid
from main.models import CompanySettings
from django.contrib.auth.models import User
import datetime
from django.utils.translation import gettext_lazy as _
# Create your models here.
class BaseModel(models.Model):
    ACTION=[
        ('create','create'),
        ('update','update'),
        ('delete','delete'),
    ]
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    action=models.CharField(choices=ACTION,max_length=100,blank=True, null=True)
    created_user_id = models.BigIntegerField(blank=True, null=True)
    updated_user_id = models.BigIntegerField(blank=True, null=True)
    deleted_user_id = models.BigIntegerField(blank=True, null=True)
    created_date = models.DateTimeField(db_index=True, auto_now_add=True)
    updated_date = models.DateTimeField(blank=True, null=True)
    deleted_date = models.DateTimeField(blank=True, null=True)
    is_delete = models.BooleanField(default=False)

    class Meta:
        abstract=True   

class AddApplication(BaseModel):
    APP_TYPE=[
        ('core','core'),
        ('addon','add on')
    ]
    application_name = models.CharField(max_length=100)
    application_logo=models.ImageField(upload_to='adminapp',blank=True)
    application_type=models.CharField(choices=APP_TYPE,max_length=100)
    parent_application=models.ForeignKey('self',blank=True,null=True,on_delete=models.CASCADE,limit_choices_to={'application_type': 'core'})
    current_version=models.CharField(max_length=100)

    class Meta:
        db_table = 'add_application'
        verbose_name = _('add application')
        verbose_name_plural = _('add application')
        
    def __str__(self):
        return str(self.application_name)

        
class Edition(BaseModel):
    app=models.ForeignKey(AddApplication,on_delete=models.CASCADE,related_name='app',blank=True,null=True)
    edition_name=models.CharField(max_length=100)
    price=models.DecimalField(decimal_places=2,max_digits=100)
    number_of_users=models.IntegerField()
    add_on=models.ManyToManyField(AddApplication,limit_choices_to={'application_type': 'addon'},blank=True,null=True,related_name='add_on')
    
    class Meta:
        db_table = 'edition'
        verbose_name = _('edition')
        verbose_name_plural = _('edition')

    def __str__(self):
        return str(self.edition_name)


class ManualEnquiries(BaseModel):

    STATUS=[
        ('solved','Solved'),
        ('pending','Pending'),
        ('declined','Declined')
    ]

    date=models.DateTimeField(db_index=True, auto_now_add=False)
    organisation=models.ForeignKey(CompanySettings,on_delete=models.CASCADE)
    phone_number=models.CharField(max_length=20)
    email=models.EmailField()
    reason=models.CharField(max_length=100)
    description=models.TextField()
    status=models.CharField(max_length=100,choices=STATUS)

    class Meta:
        db_table = 'manual_enquiries'
        verbose_name = _('manual enquiries')
        verbose_name_plural = _('manual enquiries')

    def __str__(self):
        return str(self.organisation)

        
class Blog(BaseModel):
    title=models.CharField(max_length=100)
    author=models.CharField(max_length=100)
    code=models.TextField()
    favourite=models.BooleanField(default=False)

    class Meta:
        db_table = 'blog'
        verbose_name = _('blog')
        verbose_name_plural = _('blog')

    def __str__(self):
        return str(self.title)

class Partner(BaseModel):
    user=models.ForeignKey(User,on_delete=models.CASCADE)
    phone_number=models.CharField(max_length=20)
    address=models.TextField()

    class Meta:
        db_table = 'partner'
        verbose_name = _('partner')
        verbose_name_plural = _('partner')

    def __str__(self):
        return str(self.user)


class Lead(BaseModel):
    CURRENCY=sorted([
        ("USD","USD"),
        ("EUR","EUR"),
        ("JPY","JPY"),
        ("GBP","GBP"),
        ("CHF","CHF"),
        ("CAD","CAD"),
        ("AUD/NZD","AUD/NZD"),
        ("ZAR","ZAR"),
        ("INR","INR"),
        ("OMR","OMR"),
        ("QAR","QAR"),
        ("INR","INR"),
        ("AED","AED"),
        ("SAR","SAR"),
        ("IRR","IRR"),
        ("IQD","IQD"),
    ])
    organisation=models.ForeignKey(CompanySettings,on_delete=models.CASCADE)
    title=models.CharField(max_length=100)
    value=models.DecimalField(decimal_places=10,max_digits=100)
    currency=models.CharField(choices=CURRENCY,max_length=100)
    source=models.CharField(max_length=100)

    class Meta:
        db_table = 'lead'
        verbose_name = _('lead')
        verbose_name_plural = _('lead')

    def __str__(self):
        return str(self.title)


class LeadPhoneNumbers(BaseModel):

    organisation=models.ForeignKey(CompanySettings,on_delete=models.CASCADE)
    lead=models.ForeignKey(Lead,on_delete=models.CASCADE)
    phone_number=models.CharField(max_length=100)
    type_of_phone_number=models.CharField(max_length=100)
    email=models.EmailField()
    type_of_email=models.CharField(max_length=100)

    class Meta:
        db_table = 'lead_phone_number'
        verbose_name = _('lead phone umber')
        verbose_name_plural = _('lead phone number')

    def __str__(self):
        return str(self.organisation)


class AddActivity(BaseModel):
    TYPE=[
        ('call','Call'),
        ('task','Task')
    ]
    title=models.CharField(max_length=100)
    contact_type=models.CharField(max_length=100)
    description=models.TextField()
    start_date=models.DateTimeField(auto_now_add=False)
    due_date=models.DateTimeField(auto_now_add=False)
    organisation=models.ForeignKey(CompanySettings,on_delete=models.CASCADE)
    done=models.BooleanField(default=False)

class Meta:
    db_table = 'add_activity'
    verbose_name = _('add activity')
    verbose_name_plural = _('add activity')

    def __str__(self):
        return str(self.title)



class WhatsNew(BaseModel):
    application_name=models.ForeignKey(AddApplication,on_delete=models.CASCADE)
    version=models.CharField(max_length=100)
    update=models.TextField()

class Meta:
    db_table = 'whats_new'
    verbose_name = _('whats new')
    verbose_name_plural = _('whats new')

    def __str__(self):
        return str(self.application_name)
