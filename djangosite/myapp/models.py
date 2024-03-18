from django.db import models

# Create your models here.

class AuditEntry(models.Model):
    action_test_long_one_field_is_long = models.CharField(max_length=64, db_column='action_test_long_one_fieldc443')
    ip = models.GenericIPAddressField(null=True)
    username = models.CharField(max_length=256, null=True)
    log_time = models.DateTimeField(auto_now_add = True)
