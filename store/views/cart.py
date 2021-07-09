from django.shortcuts import render

def cart(request):
    return redirect(request,"cart.html")
