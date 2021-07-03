from django.shortcuts import render, HttpResponse
from .models import Product

# Create your views here.

def index(request):
    latest = Product.objects.filter(is_latest = True)
    data ={
        'latest':latest
    }
    return render(request, "landing_page.html",data)


def home(request):
    return HttpResponse("hello")
