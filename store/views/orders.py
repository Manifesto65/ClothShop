from django.shortcuts import render
from store.models import Order as Orders
from django.views import View




class Order(View):
    def get(self, request):
        user = request.session.get('user_id')
        orders= Orders.objects.all()
        return render(request,"order.html",{'orders' : orders})






