from django.views import View
from django.shortcuts import render
from store.models import Product


class Checkout(View):
    def get(self, request):
        ids = list(request.session.get('cart').keys())
        products = Product.objects.filter(id__in=ids)
        data = {
            'products': products
        }
        return render(request, "checkout.html", data)
