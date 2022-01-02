from django.views import View
from django.shortcuts import render,redirect
from store.models import Product,Order,User


class Checkout(View):
    def get(self, request):
        ids = list(request.session.get('cart').keys())
        products = Product.objects.filter(id__in=ids)
        data = {
            'products': products
        }
        return render(request, "checkout.html", data)

    def post(self, request):
        address = request.POST['address']
        phone = request.POST['phone']
        user = request.session.get('user_id')
        cart = request.session.get('cart')
        products = Product.objects.filter(id__in =list(cart.keys()))
        for product in products:

            order = Order(product=product,user=User(id=user),quantity= cart.get(str(product.id)), price=product.price,address=address,phone=phone)
            order.save()
        request.session['cart'] = {}
        return redirect('homepage')
