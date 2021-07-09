from django.shortcuts import render
from store.models import Product


def index(request):
    latest = Product.objects.filter(is_latest=True)
    exclusive = Product.objects.get(is_exclusive=True)
    featured = Product.objects.filter(is_featured=True)

    data = {

        'latest': latest,
        'exclusive': exclusive,
        'featured': featured,

    }
    return render(request, "landing_page.html", data)