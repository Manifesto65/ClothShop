from django.shortcuts import render,redirect
from store.models import Product, Category, ProductImage
from django.core.paginator import Paginator
from django.views import View


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
        product = Product.objects.get(pk=pk)
        product_images = ProductImage.objects.filter(product=product)
        print(product_images)
        data = {
            'product': product,
            'product_images': product_images
        }
        return render(request, "product-details.html", data)

    def post(self, request,pk):
        quantity = request.POST.get('quantity')

        return render(request,"cart.html")
