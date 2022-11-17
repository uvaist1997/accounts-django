from __future__ import unicode_literals
from django.contrib import admin
from main import models as model



class VersionDetailsAdmin(admin.ModelAdmin):
	list_display = ('id', 'Version', 'Message', 'is_updation',
	                'is_web', 'is_mobile', 'UpdatedDate', 'Service')
admin.site.register(model.ServiceVersionDetails,VersionDetailsAdmin)