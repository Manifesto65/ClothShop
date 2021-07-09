from django.shortcuts import render, HttpResponse, redirect
from django.urls import reverse
from django.contrib.auth.hashers import check_password, make_password
from .forms import UserForm
from .models import Product, User, Category
from django.core.paginator import Paginator
from django.views import View
from django.views import generic


# Create your views here.




















