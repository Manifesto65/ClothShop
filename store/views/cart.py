from django.shortcuts import render
from store.models import Product
from django.views import View
from django.http import JsonResponse


class Cart(View):
    def get(self, request):
        ids = list(request.session.get('cart').keys())
        products = Product.objects.filter(id__in=ids)
        data = {
            'products': products
        }
        return render(request, "cart.html", data)


def minus_quantity(request):
    product_id = request.GET['p_id']
    cart = request.session.get('cart')

    p = Product.objects.get(id=product_id)
    quantity = cart.get(product_id)
    quantity = int(quantity) - 1
    cart[product_id] = quantity

    ids = list(request.session.get('cart').keys())
    products = Product.objects.filter(id__in=ids)

    sub_total = s_total(p, cart)
    t = total(products, cart)
    g = grand_total(products, cart)

    data = {
        'sub_total': sub_total,
        'total': t,
        'grand_total': g,
        'quantity': quantity
    }

    return JsonResponse(data)


def plus_quantity(request):
    product_id = request.GET['p_id']
    cart = request.session.get('cart')

    p = Product.objects.get(id=product_id)
    quantity = cart.get(product_id)
    quantity = int(quantity) + 1
    cart[product_id] = quantity

    ids = list(request.session.get('cart').keys())
    products = Product.objects.filter(id__in=ids)

    sub_total = s_total(p, cart)
    t = total(products, cart)
    g = grand_total(products, cart)

    data = {
        'sub_total': sub_total,
        'total': t,
        'grand_total': g,
        'quantity': quantity
    }

    return JsonResponse(data)


def remove_product(request):
    product_id = request.GET['p_id']
    cart = request.session.get('cart')

    cart.pop(product_id)
    p = Product.objects.get(id=product_id)

    ids = list(request.session.get('cart').keys())
    products = Product.objects.filter(id__in=ids)

    t = total(products, cart)
    g = grand_total(products, cart)

    data = {
        'total': t,
        'grand_total': g,

    }

    return JsonResponse(data)


def product_quantity(product, cart):
    keys = cart.keys()
    for id in keys:
        if int(id) == product.id:
            return cart.get(id)
    return 0


def s_total(product, cart):
    return product.price * float(product_quantity(product, cart)) - (
                float(product_quantity(product, cart)) * product.discount_price)


def total(products, cart):
    sum = 0
    for p in products:
        sum += s_total(p, cart)

    return sum


def grand_total(products, cart):
    return total(products, cart) - 35
