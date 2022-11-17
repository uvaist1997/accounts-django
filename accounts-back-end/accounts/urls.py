from django.contrib import admin
from django.urls import path, include
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls')),
    path('api/v1/accounts/', include("api.v1.accounts.urls")),
    path('api/v1/countries/', include("api.v1.countries.urls")),
    path('api/v1/users/', include("api.v1.users.urls")),
    path('api/v1/authentication/', include("api.v1.authentication.urls")),
    path('api/v1/company/', include("api.v1.company.urls")),
#v2
    path('api/v2/accounts/', include("api.v2.accounts.urls")),
    path('api/v2/countries/', include("api.v2.countries.urls")),
    path('api/v2/users/', include("api.v2.users.urls")),
    path('api/v2/authentication/', include("api.v2.authentication.urls")),
    path('api/v2/company/', include("api.v2.company.urls")),
    path('api/v2/adminapp/', include("api.v2.adminapp.urls")),
]

urlpatterns += staticfiles_urlpatterns()
if settings.DEBUG :
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
