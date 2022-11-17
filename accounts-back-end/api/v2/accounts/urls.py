from django.urls import path, re_path
from . import views

app_name = 'api.v1.accounts.urls'

urlpatterns = [
    path("accounts", views.accounts, name="accounts"),
    path("recent-login-users", views.recent_users, name="recent_users"),
    path("update-token", views.update_token, name="update_token"),
    
    path("personal-info", views.personal_info, name="personal_info"),
    path("payments-subscription", views.payments_subscription, name="payments_subscription"),

]