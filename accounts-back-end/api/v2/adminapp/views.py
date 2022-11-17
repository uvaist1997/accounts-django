
from pickle import NONE
from django.shortcuts import render
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view,permission_classes,renderer_classes
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.renderers import JSONRenderer
from adminpage.models import *
import datetime
from main.models import *
from.serializers import *
from django.utils import timezone
from main.functions import get_company
# Create your views here.
# python3 manage.py sqlsequencereset auth | python3 manage.py dbshell
"""
http://localhost:8000/api/v2/adminapp/add-application/
"""
"""
MODULE : APPLICATION
"""
# List of applications
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def view_applications(request):
    
    if AddApplication.objects.all().exists():
        applications=AddApplication.objects.filter(is_delete=False)
        serialized=ApplicationSerializers(applications,many=True)

        response_data= {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
            response_data= {"StatusCode": 6001, "data": "No data in database"}
            return Response(response_data)
    
# Creating applications and edition
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def add_application(request):
    today=datetime.datetime.today()
    if request.method=="POST":

        data = request.data
        serialized=ApplicationSerializers(data=request.data)

        #Taking name of the application
        app_name=data['application_name']
        
        if serialized.is_valid():
            #Creating AddApplication
            application_instance=AddApplication.objects.create(
                action='create',
                created_user_id=request.user.id,
                created_date=today,
                application_name=serialized.data['application_name'],
                application_logo=serialized.data['application_logo'],
                application_type=serialized.data['application_type'],
                parent_application=serialized.data['parent_application'],
                current_version=serialized.data['current_version']
            )
            
            #Taking instance of the application above created(To create Edition.app)
            app=AddApplication.objects.get(id=application_instance.id)
            #Now creating editions
            #Taking editions in the form of dict
            editions=data['editions']

            #Looping edition
            for item in editions:

                try:
                    edition_name=item['edition_name']
                    price=item['price']
                    number_of_users=item['number_of_users']
                    # list of id's of application
                    add_on=item['add_on']
                    
                    # list of application objects using above id's
                    add_on_list=[obj for obj in add_on if AddApplication.objects.get(id=obj)]
                    # creating Edition object
                    edition_instance=Edition.objects.create(
                        action="create",
                        created_user_id=request.user.id,
                        created_date=today,
                        app=app,
                        edition_name=edition_name,
                        price=price,
                        number_of_users=number_of_users,    
                    )
                    # adding add_on_list of objects to above created Edition object
                    edition_instance=Edition.objects.get(id=edition_instance.id)
                    for item in add_on_list:
                        edition_instance.add_on.add(AddApplication.objects.get(id=item))
                except:
                    print('There is an error occur when creating Editions')
                    response_data= {"StatusCode": 6001, "data": "There is an error occur when creating Editions "}
                    return Response(response_data)
                    
            data = serialized.data
            response_data= {"StatusCode": 6000, "data": data}
            return Response(response_data)

        else:
            response_data= {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)

#single view
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def single_application(request,pk):
    #Taking instance of the application
    application=AddApplication.objects.get(id=pk)
    serialized=SingleApplicationSerializers(application)

    response_data={"StatusCode": 6000, "data":serialized.data}
    return Response(response_data)


# editing application
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_application(request,pk):

        today=datetime.datetime.today()
        data = request.data

        application=AddApplication.objects.get(id=pk)
        serialized=ApplicationSerializers(data=request.data)

        if serialized.is_valid():
    
            application.application_name=serialized.data['application_name']
            application.application_logo=serialized.data['application_logo']
            application.application_type=serialized.data['application_type']
            application.parent_application=serialized.data['parent_application']
            application.current_version=serialized.data['current_version']
            application.action="update"
            application.updated_user_id=request.user.id
            application.updated_date=today
            application.save()

            response_data={"StatusCode": 6000,"data":data}
            return Response(response_data)
        else:
            response_data= {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)


# Editing editions
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_edition(request,pk):
        
        today=datetime.datetime.today()
        data=request.data

        edition=Edition.objects.get(id=pk)
        serialized=SingleEditionSerializers(data=request.data)
        if serialized.is_valid():
            edition.action="update"
            edition.updated_user_id=request.user.id
            edition.updated_date=today
            edition.edition_name=serialized.data['edition_name']
            edition.price=serialized.data['price']
            edition.app=AddApplication.objects.get(id=data['app'])
            edition.number_of_users=serialized.data['number_of_users']
            edition.save()

            #Saving add ons
            try:
                # list of id's of application
                add_on=data['add_on']
                # list of application objects using above id's
                add_on_list=[obj for obj in add_on if AddApplication.objects.get(id=obj)]

                # adding add_on_list of objects to above created Edition object
                edition_instance=Edition.objects.get(id=edition.id)
                # Removing all existing add ons
                for item in edition_instance.add_on.all():
                    edition_instance.add_on.remove(item)
                # adding existing and new add ons
                for item in add_on_list:
                    edition_instance.add_on.add(AddApplication.objects.get(id=item))

                response_data={"StatusCode": 6000,"data":serialized.data}
                return Response(response_data)
            except:
                print('There is an error occur when updating Editions')
                response_data= {"StatusCode": 6001, "data": "There is an error occur when updating Editions "}
                return Response(response_data)
                
        else:
            print(serialized.errors)
            response_data= {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)
        

# Creating new editions for the application
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def add_edition(request,pk):

    today=datetime.datetime.today()
    data=request.data

    # Instance
    application=AddApplication.objects.get(id=pk)
    serialized=SingleEditionSerializers(data=request.data)

    # list of id's of application
    add_on=data['add_on']
    # list of application objects using above id's
    add_on_list=[obj for obj in add_on if AddApplication.objects.get(id=obj)]

    # creating Edition object
    if serialized.is_valid():

        edition_instance=Edition.objects.create(
            action="create",
            created_user_id=request.user.id,
            created_date=today,
            app=application,
            edition_name=serialized.data['edition_name'],
            price=serialized.data['price'],
            number_of_users=serialized.data['number_of_users'],
        )

        # adding add_on_list of objects to above created Edition object
        edition_instance=Edition.objects.get(id=edition_instance.id)
        # adding add ons
        # for item in add_on_list:
        edition_instance.add_on.add(add_on_list)

        response_data= {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)

    else:

        response_data= {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)


# delete editions
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_edition(request,pk):
        today=datetime.datetime.today()
        edition=Edition.objects.get(id=pk)

        edition.is_delete=True
        edition.action='delete'
        edition.deleted_user_id=request.user.id
        edition.deleted_date=today
        edition.save()

        message=str(edition)+" "+"is successfully deleted"
        response_data= {"StatusCode": 6000, "data": message}
        return Response(response_data)

# delete applications
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_application(request,pk):
        today=datetime.datetime.today()
        application=AddApplication.objects.get(id=pk)

        application.is_delete=True
        application.action='delete'
        application.deleted_user_id=request.user.id
        application.deleted_date=today
        application.save()

        message=str(application)+" "+"is successfully deleted"
        response_data= {"StatusCode": 6001, "data": message}
        return Response(response_data)


"""
MODULE : BLOG
"""
# Blog views list
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def blog_view(request):

    if Blog.objects.filter(is_delete=False).exists():

        blogs=Blog.objects.filter(is_delete=False).order_by('created_date')
        print(blogs)
        serialized=BlogListSerializers(blogs,many=True)

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No blogs found!"}
        return Response(response_data)


# Creating new blogs
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def create_blog(request):

    today=datetime.datetime.today()
    data=request.data
    print(data)
    serialized=BlogSerializers(data=request.data)

    if serialized.  is_valid():

        title=serialized.data['title']
        author=serialized.data['author']
        code=serialized.data['code']

        Blog.objects.create(
            action='create',
            created_user_id=request.user.id,
            created_date=today,   
            title=title,
            author=author,
            code=code
        )

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        print(serialized.errors)
        response_data = {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)


# Single blog view
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))

def single_blog(request,pk):

    if Blog.objects.filter(id=pk).exists():

        blogs=Blog.objects.get(id=pk)
        serialized=BlogSerializers(blogs)

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No blogs found!"}
        return Response(response_data)


# Edit blog
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_blog(request,pk):

    today=datetime.datetime.today()
    data=request.data

    blog=Blog.objects.get(id=pk)
    serialized=BlogSerializers(data=request.data)
    
    if serialized.is_valid():

        title=serialized.data['title']
        author=serialized.data['author']
        code=serialized.data['code']

        blog=Blog.objects.get(id=pk)
        blog.action='update'
        blog.updated_user_id=request.user.id
        blog.updated_date=today
        blog.title=title
        blog.author=author
        blog.code=code
        blog.save()


        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)


# Add to favorite
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def favorite_blog(request,pk):
    if Blog.objects.filter(id=pk).exists():
        
        blog=Blog.objects.get(id=pk)
        if blog.favourite==True:
            blog.favourite=False
            blog.save()
            response_data = {"StatusCode": 6000, "data": "Excluded from favorite"}
            return Response(response_data)
        else:
            blog.favourite=True
            blog.save()

            response_data = {"StatusCode": 6000, "data": "Added to favorite"}
            return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No blogs found!"}
        return Response(response_data)

#  delete blogs
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_blog(request,pk):

    today=datetime.datetime.today()

    if Blog.objects.filter(id=pk).exists():

        blog=Blog.objects.get(id=pk)
        blog.deleted_user_id=request.user.id
        blog.deleted_date=today
        blog.is_delete=True
        blog.save()

        blogs=Blog.objects.filter(is_delete=False).order_by('created_date')
        print(blogs)
        serialized=BlogListSerializers(blogs,many=True)
        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No blogs found!"}
        return Response(response_data)


"""
MODULE : LEADS
"""
# lead list views
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def lead_view(request):

    if Lead.objects.filter(is_delete=False).exists():

        leads=Lead.objects.filter(is_delete=False)
        serialized=LeadSerializersList(leads,many=True)

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No leads found!"}
        return Response(response_data)


# creating lead
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def create_lead(request):

    data=request.data

    serialized=LeadSerializers(data=request.data)

    if serialized.is_valid():

        company_instance=CompanySettings.objects.get(id=serialized.data['organisation'])
        # Creating lead 
        lead_instance=Lead.objects.create(
            
            action="create",
            created_user_id=request.user.id,
            title=serialized.data['title'],
            value=serialized.data['value'],
            currency=serialized.data['currency'],
            source=serialized.data['source'],
            organisation=company_instance
        )

        # Creating Lead phone numbers and emails

        #phone_number=[{"phone_number":"235423","type_of_phone_number":"work"}]
        #email=[{"email":"email@gmail.com","type_of_email":"work"}]

        phone_number_list=data['phone_number']
        email_list=data['email']

        # phone number
        for item in phone_number_list:
            phone_number=item['phone_number']
            type_of_phone_number=item['type_of_phone_number']

            LeadPhoneNumbers.objects.create(
                    
                    action="create",
                    created_user_id=request.user.id,
                    lead=Lead.objects.get(id=lead_instance.id),
                    organisation=company_instance,
                    phone_number=phone_number,
                    type_of_phone_number=type_of_phone_number,
                )
        # email
        for item in email_list:
            email=item['email']
            type_of_email=item['type_of_email']

            LeadPhoneNumbers.objects.create(
                    
                    action="create",
                    created_user_id=request.user.id,
                    lead=Lead.objects.get(id=lead_instance.id),
                    organisation=company_instance,
                    email=email,
                    type_of_email=type_of_email,
                )

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)   


    else:
        print('not valid')
        response_data = {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)



#single view
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def single_lead(request,pk):

    #Taking instance of the application
    lead=Lead.objects.get(id=pk)
    serialized=LeadSerializersList(lead)

    response_data={"StatusCode": 6000, "data":serialized.data}
    return Response(response_data)


# Edit lead
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_lead(request,pk):

    if Lead.objects.filter(id=pk).exists():

        today=datetime.datetime.today()
        data = request.data
        
        lead=Lead.objects.get(id=pk)
        serialized = LeadSerializers(data=request.data)

        if serialized.is_valid():
            # Taking values
            company_instance=CompanySettings.objects.get(id=serialized.data['organisation'])
            title=serialized.data['title']
            value=serialized.data['value']
            currency=serialized.data['currency']
            source=serialized.data['source']
            
            # instance
            lead=Lead.objects.get(id=pk) 

            # updating instance
            lead.action='update'
            lead.updated_user_id=request.user.id
            lead.updated_date=today
            lead.organisation=company_instance
            lead.title=title
            lead.value=value
            lead.currency=currency
            lead.source=source
            
            #save
            lead.save()

            # Updating LeadPhoneNumber Module
            #{"id":"83b2c379-fed9-4cf6-b429-160297029ed0","phone_number":"12365756","type_of_phone_number":"home"}
            #{"id":"83b2c379-fed9-4cf6-b429-160297029ed0","email":"12365756","type_of_email":"home"}
            phone_number_list=data['phone_number']
            email_list=data['email']

            # Updating phone number
            for item in phone_number_list:
                phone_number=item['phone_number']
                type_of_phone_number=item['type_of_phone_number']
                lead_phone_number_instance=LeadPhoneNumbers.objects.get(id=item['id'])
                        
                lead_phone_number_instance.action="update"
                lead_phone_number_instance.updated_user_id=request.user.id
                lead_phone_number_instance.updated_date=today
                lead_phone_number_instance.phone_number=phone_number
                lead_phone_number_instance.type_of_phone_number=type_of_phone_number
                # save
                lead_phone_number_instance.save()

            # Updating email
            for item in email_list:
                email=item['email']
                type_of_email=item['type_of_email']
                lead_phone_number_instance=LeadPhoneNumbers.objects.get(id=item['id'])
                        
                lead_phone_number_instance.action="update"
                lead_phone_number_instance.updated_user_id=request.user.id
                lead_phone_number_instance.updated_date=today
                lead_phone_number_instance.email=email,
                lead_phone_number_instance.type_of_email=type_of_email
                # save
                lead_phone_number_instance.save()



            response_data = {"StatusCode": 6000, "data":serialized.data}
            return Response(serialized.data)
        else:
            print(serialized.errors)
            response_data = {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)

    else:
        response_data = {"StatusCode": 6001, "data": "No leads found!"}
        return Response(response_data)

# Delete lead
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_lead(request,pk):

    today=datetime.datetime.today()

    if Lead.objects.filter(id=pk).exists():

        lead=Lead.objects.get(id=pk)
        lead.action="delete"
        lead.deleted_user_id=request.user.id
        lead.deleted_date=today
        lead.is_delete=True
        lead.save()

        response_data = {"StatusCode": 6000, "data": "lead deleted"}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No blogs found!"}
        return Response(response_data)



"""
Activity module
"""
# Activity list views
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def activity_view(request):

    if AddActivity.objects.filter(is_delete=False).exists():

        activity=AddActivity.objects.filter(is_delete=False)
        serialized=ActivitySerializers(activity,many=True)

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No activities found!"}
        return Response(response_data)

# creating activity
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def create_activity(request):

    data=request.data
    serialized=ActivitySerializers(data=request.data)

    if serialized.is_valid():

        company_instance=CompanySettings.objects.get(id=serialized.data['organisation'])
        activity_instance=AddActivity.objects.create(
            
            action="create",
            created_user_id=request.user.id,
            title=serialized.data['title'],
            contact_type=serialized.data['contact_type'],
            description=serialized.data['description'],
            start_date=serialized.data['start_date'],# Foramt >> 2022-10-17 09:49:52.905091+05:30
            due_date=serialized.data['due_date'],
            organisation=company_instance
        )

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)   


    else:
        print('not valid')
        response_data = {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)



#single view
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def single_activity(request,pk):

    #Taking instance of the application
    activity=AddActivity.objects.get(id=pk)
    serialized=ActivitySerializers(activity)

    response_data={"StatusCode": 6000, "data":serialized.data}
    return Response(response_data)

# edit activity
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_activity(request,pk):

    if AddActivity.objects.filter(id=pk).exists():

        today=datetime.datetime.today()
        data = request.data
        
        activity=AddActivity.objects.get(id=pk)
        serialized = ActivitySerializers(data=request.data)

        if serialized.is_valid():
            #instance
            activity_instance=AddActivity.objects.get(id=pk)
            # Taking values
            company_instance=CompanySettings.objects.get(id=serialized.data['organisation'])

            activity_instance.action="update"
            activity_instance.updated_user_id=request.user.id
            activity_instance.updated_date=today
            activity_instance.title=serialized.data['title']
            activity_instance.contact_type=serialized.data['contact_type']
            activity_instance.description=serialized.data['description']
            activity_instance.start_date=serialized.data['start_date']# Foramt >> 2022-10-17 09:49:52.905091+05:30
            activity_instance.due_date=serialized.data['due_date']
            activity_instance.organisation=company_instance

            activity_instance.save()
            
            response_data = {"StatusCode": 6000, "data":serialized.data}
            return Response(serialized.data)

        else: 

            print(serialized.errors)
            response_data = {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)

    else:
        response_data = {"StatusCode": 6001, "data": "No leads found!"}
        return Response(response_data)


# delete activity
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_activity(request,pk):

    today=datetime.datetime.today()

    if AddActivity.objects.filter(id=pk).exists():

        activity=AddActivity.objects.get(id=pk)
        activity.action="delete"
        activity.deleted_user_id=request.user.id
        activity.deleted_date=today
        activity.is_delete=True
        activity.save()

        response_data = {"StatusCode": 6000, "data": "activity deleted"}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No activity found!"}
        return Response(response_data)


"""
WhatsNew module
"""
# whats new list
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def whats_new_view(request):

    if WhatsNew.objects.filter(is_delete=False).exists():

        whats_new=WhatsNew.objects.filter(is_delete=False)
        serialized=WhatsNewSerializers(whats_new,many=True)

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "No activities found!"}
        return Response(response_data)


#single view
@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def single_whats_new(request,pk):

    #Taking instance of the application
    activity=WhatsNew.objects.get(id=pk)
    serialized=WhatsNewSerializers(activity)

    response_data={"StatusCode": 6000, "data":serialized.data}
    return Response(response_data)


# creating whats new      
@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def create_whats_new(request):

    data=request.data
    serialized=WhatsNewSerializers(data=request.data)

    if serialized.is_valid():

        whats_new_instance=WhatsNew.objects.create(
        
            action="create",
            created_user_id=request.user.id,
            application_name=AddApplication.objects.get(id=serialized.data['application_name']),
            version=serialized.data['version'],
            update=serialized.data['update'],
        )

        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)   


    else:
        print('not valid')
        response_data = {"StatusCode": 6001, "data": serialized.errors}
        return Response(response_data)


# Edit Whats new
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_whats_new(request,pk):

    if WhatsNew.objects.filter(id=pk).exists():

        today=datetime.datetime.today()
        data = request.data
        
        whats_new=WhatsNew.objects.get(id=pk)
        serialized = WhatsNewSerializers(data=request.data)

        if serialized.is_valid():

            whats_new=WhatsNew.objects.get(id=pk)
            # Taking values

            whats_new.action="update"
            whats_new.updated_user_id=request.user.id
            whats_new.updated_date=today
            whats_new.application_name=AddApplication.objects.get(id=serialized.data['application_name'])
            whats_new.version=serialized.data['version']
            whats_new.update=serialized.data['update']
            #save
            whats_new.save()
            
            response_data = {"StatusCode": 6000, "data":serialized.data}
            return Response(serialized.data)

        else: 

            print(serialized.errors)
            response_data = {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)

    else:
        response_data = {"StatusCode": 6001, "data": "No leads found!"}
        return Response(response_data)

#delete whats new
@api_view(['DELETE'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_whats_new(request,pk):

    today=datetime.datetime.today()
    
    if WhatsNew.objects.filter(id=pk).exists():

        whats_new=WhatsNew.objects.get(id=pk)
        whats_new.action="delete"
        whats_new.deleted_user_id=request.user.id
        whats_new.deleted_date=today
        whats_new.is_delete=True
        whats_new.save()

        response_data = {"StatusCode": 6000, "data": "Whats new data deleted"}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": " Whats new data not found!"}
        return Response(response_data)


"""

RASHID MODULES

"""

@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def view_manualenquiries(request):

    if ManualEnquiries.objects.all().exists():
        enquiries = ManualEnquiries.objects.all()
        serialized = ManualenquirieSerializer(enquiries, many=True)


        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "no data in database"}
        return Response(response_data)



@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))

def add_manualenquiries(request):
    if request.method == "POST":
        data = request.data
        serialized = ManualenquirieSerializer(data=request.data)
        print(data)
        if serialized.is_valid():
            #Taking instance of the organisation above created(To create ManualEnquiries.organisation)
            organisation=get_company(serialized.data['organisation'])
            #creating manualenquiries
            manualenquiries_instance = ManualEnquiries.objects.create(
                action='create',
                status = serialized.data['status'],
                created_user_id = request.user.id,
                date = datetime.datetime.now().date(),
                organisation = organisation,
                phone_number = serialized.data['phone_number'],
                email = serialized.data['email'],
                reason = serialized.data['reason'],
                description = serialized.data['description'],
            )
            response_data = {"StatusCode": 6000, 'data': serialized.data}
            return Response(response_data)
        else:
            print(serialized.errors)  
        response_data = {"StatusCode": 6000, 'data': serialized.errors}
        return Response(response_data)




#update manualenquiries
@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_manualenquiries(request,pk):
    today = datetime.datetime.today()
    data = request.data
    manualenquiries = ManualEnquiries.objects.get(id = pk)
    serialized = ManualenquirieSerializerstatus(data=request.data)

    if serialized.is_valid():
        print("========================================")
        manualenquiries.status = serialized.data['status']
        manualenquiries.action="update"
        manualenquiries.updated_user_id=request.user.id
        manualenquiries.updated_date=today
        manualenquiries.save()
        print(data)

        response_data={"StatusCode": 6000,"data":data}
        return Response(response_data)
    else:
        
            response_data= {"StatusCode": 6001, "data": serialized.errors}
            return Response(response_data)


    







@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
#http://127.0.0.1:8000/api/v2/adminapp/view_Partner/
def view_Partner(request):

    if Partner.objects.all().exists():
        partner = Partner.objects.all()
        serialized = PartnerSerializer(partner, many=True)


        response_data = {"StatusCode": 6000, "data": serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "no data in database"}
        return Response(response_data)
    



@api_view(['POST'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))

def add_partner(request):
    if request.method == "POST":
        data = request.data
        serialized = UserSerializer(data=request.data)

        print(data)

        if serialized.is_valid():
            #create Partner
            username = serialized.data["username"]
            password = serialized.data["password"]
            first_name = serialized.data["first_name"]
            email = serialized.data["email"]

            user_instance = User.objects.create(
                username = username,
                password = password,
                first_name = first_name,
                email = email,
            )
            address = data["address"]
            phone_number = data["phone_number"]


            Partner.objects.create(

                user = User.objects.get(id=user_instance.id),
                action = "create",
                created_user_id = request.user.id,
                address = address,
                phone_number = phone_number,
            )


            response_data = {"StatusCode": 6000, 'data': serialized.data}
            return Response(response_data)
        else:
            print(serialized.errors)  
        response_data = {"StatusCode": 6000, 'data': serialized.errors}
        return Response(response_data)

@api_view(['GET'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def single_partner(request,pk):
    if request.method =="GET":
        data = request.data
        partner = Partner.objects.get(id=pk)
        user = User.objects.get(id=partner.user.id)
        

        serialized = PartnerSerializer(partner)
        response_data = {"StatusCode": 6000, 'data': serialized.data}
        return Response(response_data)
    else:
        response_data = {"StatusCode": 6001, "data": "no data in database"}
        return Response(response_data)


@api_view(['PUT'])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def edit_partners(request,pk):
    today = datetime.datetime.today()
    data  = request.data
    partner = Partner.objects.get(id=pk)
    user = User.objects.get(id=partner.user.id)
    serialized = Partner_Serializer(data=request.data)
    serialized1 = UserEditSerializer(data=request.data)
    

    if serialized.is_valid() and serialized1.is_valid():
        partner.phone_number = serialized.data['phone_number']
        partner.address = serialized.data['address']
        user.first_name = serialized1.data['first_name']
        

        user.email = serialized1.data['email']
        partner.action="update"
        partner.updated_user_id = request.user.id
        partner.updated_date = today
        partner.save()
        user.save()

        response_data = {"StatusCode": 6000,"data":serialized.data}
        return Response(response_data)
    else:
        print(serialized.errors)
        print(serialized1.errors)
        response_data={"StatusCode":6001,"data":serialized.errors}
        return Response(response_data)

@api_view(["DELETE"])
@permission_classes((IsAuthenticated,))
@renderer_classes((JSONRenderer,))
def delete_partner(request,pk):
    #print("==============================")
    if request.method == "DELETE":    
        today = datetime.datetime.now()
        instance = Partner.objects.get(id=pk)
        instance1 = User.objects.get(id=instance.user.id)

        instance.is_delete=True
        instance1.is_active=False
        instance.action='delete'
        instance.deleted_user_id=request.user.id
        instance.deleted_date=today
        instance.save()
        instance1.save()

        message=str(instance)+""+ "is successfully deleted"
        response_data={"StatusCode":"6001","data":message}
        return Response(response_data)
