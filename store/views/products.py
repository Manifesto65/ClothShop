from django.shortcuts import render, redirect
from store.models import Product, Category, ProductImage
from django.core.paginator import Paginator
from django.views import View
from store.recommender import recommend


def products(request):
    products = None
    # Sorting code
    sentrequest = request.GET.get('query')

    if sentrequest == "price":
        products = Product.objects.all().order_by('price')


    elif sentrequest == '1' or sentrequest == '3' or sentrequest == '4':
        category = Category.objects.get(id=sentrequest)
        products = Product.objects.filter(category=category)

    else:
        products = Product.objects.all()

    # Seach Code
    item_name = request.GET.get('item_name')

    if item_name != '' and item_name is not None:
        products = Product.objects.filter(title__icontains=item_name)

    # Pagination code
    paginator = Paginator(products, 8)
    page = request.GET.get('page')
    products = paginator.get_page(page)

    data = {
        'products': products,
        'categories': Category.objects.all()
    }
    return render(request, "allproduct.html", data)


class ProductDetail(View):
    def get(self, request, pk):
        cart = request.session.get('cart')
        if cart:
            pass
        else:
            cart = {}
            request.session['cart'] = cart

        product = Product.objects.get(pk=pk)
        ids = recommend(product.title)
        recommendations = Product.objects.filter(id__in=ids)
        product_images = ProductImage.objects.filter(product=product)
        data = {
            'product': product,
            'product_images': product_images,
            'recommendations': recommendations
        }
        print(recommendations)
        return render(request, "product-details.html", data)

    def post(self, request, pk):
        quantity = request.POST.get('quantity')
        product = pk
        cart = request.session.get('cart')
        if cart:
            cart[product] = quantity
        else:

            cart[product] = quantity

        request.session['cart'] = cart

        return redirect("store:product-detail", pk=pk)






