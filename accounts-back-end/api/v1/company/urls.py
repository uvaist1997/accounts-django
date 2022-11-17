from django.urls import path, re_path
from . import views

app_name = 'api.v1.company.urls'

urlpatterns = [
    path("get-company-details/", views.get_company_details,
         name="Get Company Details"),
    path("companies/", views.companies,
         name="Companies"),
    path("business-types/", views.business_types,
         name="Busines Type"),
    path("countries/", views.countries,
         name="Countries"),
    re_path(r'^country-states/(?P<pk>.*)/$', views.country_state,
         name="country_state"),
    
    path("create-organization/", views.create_organization,
         name="Create Organization"),
]