from django.urls import path, re_path

from api.v1.countries import views

urlpatterns = [
    path("create-country/", views.create_country, name="create_country"),
    path("countries/", views.countries, name="countries"),

    re_path("view/country/(?P<pk>.*)/", views.country, name="country"),
    re_path("edit/country/(?P<pk>.*)/", views.edit_country, name="edit_country"),
    re_path("delete/country/(?P<pk>.*)/", views.delete_country, name="delete_country"),
]
