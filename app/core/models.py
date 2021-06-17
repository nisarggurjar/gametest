from django.db import models

class TestModel(models.Model):
    name = models.CharField(max_length=128, blank=True, null=True)
    email = models.EmailField(null=True, blank=True)

    def __str__(self):
        return self.name
