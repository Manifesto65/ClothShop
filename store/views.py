from django.shortcuts import render, HttpResponse
from .models import Product

# Create your views here.

def index(request):
    latest = Product.objects.filter(is_latest = True)
    exclusive = Product.objects.get(is_exclusive=True)
    featured = Product.objects.filter(is_featured=True)
    data ={
        'latest':latest,
        'exclusive':exclusive,
        'featured':featured
    }
    return render(request, "landing_page.html",data)


def home(request):
    return HttpResponse("hello")


def login(request):
    return render(request, "login.html")
