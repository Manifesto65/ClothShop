from django.urls import path
from store.views.products import products,ProductDetail
from store.views.cart import cart

app_name = 'store'

urlpatterns =[

    path('products/', products, name= "products"),
    path('cart/', cart, name= "cart"),
    path('product-detail/<int:pk>',ProductDetail.as_view() , name= "product-detail"),

]