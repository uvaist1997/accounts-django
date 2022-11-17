from django.urls import path, re_path

from api.v2.adminapp import views

urlpatterns = [
    # MODULE : APPLICATION
    path("view-applications/", views.view_applications, name="view_application"),
    path("add-application/", views.add_application, name="add_application"),

    re_path(r"^single-application/(?P<pk>.*)/$", views.single_application, name="single_application"),
    re_path(r"^edit-application/(?P<pk>.*)/$", views.edit_application, name="edit_application"),
    re_path(r"^edit-edition/(?P<pk>.*)/$", views.edit_edition, name="edit_edition"),
    re_path(r"^add-edition/(?P<pk>.*)/$", views.add_edition, name="add_edition"),
    re_path(r"^delete-application/(?P<pk>.*)/$", views.delete_application, name="delete_application"),
    re_path(r"^delete-edition/(?P<pk>.*)/$", views.delete_edition, name="delete_edition"),

    # MODULE : BLOG
    path("view-blogs/", views.blog_view, name="blog_view"),
    path("add-blogs/", views.create_blog, name="create_blog"),
    re_path(r"^single-blog/(?P<pk>.*)/$", views.single_blog, name="single_blog"),
    re_path(r"^edit-blog/(?P<pk>.*)/$", views.edit_blog, name="edit_blog"),
    re_path(r"^favorite-blog/(?P<pk>.*)/$", views.favorite_blog, name="favorite_blog"),
    re_path(r"^delete-blog/(?P<pk>.*)/$", views.delete_blog, name="delete_blog"),
    
    # MODULE : LEADS
    path("lead-view/", views.lead_view, name="lead_view"),
    re_path(r"^create-lead/$", views.create_lead, name="create_lead"),
    re_path(r"^edit-lead/(?P<pk>.*)/$", views.edit_lead, name="edit-lead"),
    re_path(r"^single-lead/(?P<pk>.*)/$", views.single_lead, name="single-lead"),
    re_path(r"^delete-lead/(?P<pk>.*)/$", views.delete_lead, name="delete-lead"),

    # MODULE : ACTIVITY
    path("activity-view/", views.activity_view, name="activity_view"),
    re_path(r"^create-activity/$", views.create_activity, name="create_activity"),
    re_path(r"^edit-activity/(?P<pk>.*)/$", views.edit_activity, name="edit_activity"),
    re_path(r"^single-activity/(?P<pk>.*)/$", views.single_activity, name="single_activity"),
    re_path(r"^delete_activity/(?P<pk>.*)/$", views.delete_activity, name="delete_activity"),

    #MODULE : WHATS NEW
    path("whats-new-view/", views.whats_new_view, name="whats_new_view"),
    re_path(r"^create-whats-new/$", views.create_whats_new, name="create_whats_new"),
    re_path(r"^edit-whats-new/(?P<pk>.*)/$", views.edit_whats_new, name="edit_whats_new"),
    re_path(r"^single-whats-new/(?P<pk>.*)/$", views.single_whats_new, name="single_whats_new"),
    re_path(r"^delete-whats-new/(?P<pk>.*)/$", views.delete_whats_new, name="delete_whats_new"),

    # RASHID MODULES

    path("view-manualenquiries/", views.view_manualenquiries, name="view_manualenquiries"),#tested
    path("add-manualenquiries/", views.add_manualenquiries, name="add_manualenquiries"),
    re_path(r'^edit-manualenquiries/(?P<pk>.*)/$', views.edit_manualenquiries,name="edit_manualenquiries"),  
    path("view-Partner/", views.view_Partner, name="view_Partner"),
    path("add-partner/", views.add_partner, name="add_partner"),
    path("single-partner/<pk>", views.single_partner, name="single_partner"),
    re_path(r'^edit-partners/(?P<pk>.*)$', views.edit_partners,name="edit_partners"),  
    re_path(r'^delete-partner/(?P<pk>.*)$', views.delete_partner,name="delete_partner"),  

]


