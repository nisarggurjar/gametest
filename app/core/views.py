from django.shortcuts import render
from django.http import HttpResponse
from .models import TestModel
def Home(request):
    return HttpResponse("Congrats it worked well")

def CreateTestModel(request):
    TestModel.objects.create(name="Test", email="test@gmail.com")
    return HttpResponse("Created")

def ViewTestModel(request):
    q = TestModel.objects.all()
    print(q)
    return HttpResponse("View Model")
