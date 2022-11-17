from django.urls import path, re_path
from . import views

app_name = 'api.v1.users.urls'

urlpatterns = [
     path("login", views.auth_user, name="User Authentication"),
     path("logout", views.logout_user, name="User Logout"),
     path("logout-cookie", views.logout_cookie, name="logout_cookie"),
     path("user-signup", views.user_signup, name="user_signup"),
     path("signup-verified/", views.signUp_verified, name="signUp_verified"),
     path(
        "resend-verification-code/",
        views.resend_verification_code,
        name="resend_verification_code",
    ),
     path("forgot-password/", views.forgot_password, name="forgot_password"),
    re_path(
         r'forgot-password-confirm/(?P<Token>.*)$',
        views.forgot_password_confirm,
        name="forgot_password_confirm",
     ),
#      re_path(
#         r'forgot-password-confirm/(?P<uidb64>.*)/(?P<token>.*)/$',
#         views.forgot_password_confirm,
#         name="forgot_password_confirm",
#     ),
     path("view", views.users, name="Customers Data"),
     path("render-document", views.render_document, name="render_document"),
     re_path(r'^edit/(?P<pk>.*)$', views.edit_user),
     re_path(r'^user/(?P<pk>.*)$', views.user),
     path("download-database", views.download_database, name="download_database"),

     path("get-users/", views.get_users,
          name="get_users"),
     path("get-username/", views.get_username,
          name="get_username"),
    path("check-username/", views.check_username, name="check_username"),
    
    path("create-service/user/", views.create_service_user, name="create_service_user"),
    path("invite-user/", views.invite_user, name="invite_user"),
    
    path("logout-view/", views.logout_view, name="logout_view"),
    path("check-data/", views.check_data, name="check_data"),
    path("list-device/", views.list_device, name="list_device"),
    path("list-recent-activity/", views.list_recent_activity, name="list_recent_activity"),
    path("change-password/", views.change_password, name="change_password"),
    path("list-account-services/", views.list_account_services, name="list_account_services"),
    path("account-service-status/", views.account_service_status, name="account_service_status"),
    path("account-delete/", views.account_delete, name="account_delete"),
    path("change-ownership/", views.change_account_ownership, name="change_account_ownership"),
    path("confirm-ownership/", views.confirm_ownership, name="confirm_ownership"),
    path("delete-organisation/", views.delete_organisation, name="delete_organisation"),

    
    path("get-user/datas/", views.get_user_datas, name="get_user_datas"),
    path("profile-update/", views.profile_update, name="profile_update"),
    path("send-feedback/", views.send_feedback, name="send_feedback"),

]