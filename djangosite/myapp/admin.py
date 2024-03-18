from django.contrib import admin

# Register your models here.
from .models import AuditEntry

admin.site.register(AuditEntry)