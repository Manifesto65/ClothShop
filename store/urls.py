from django.urls import path
from store.views.products import products, ProductDetail
from store.views.cart import Cart,minus_quantity,plus_quantity,remove_product
from store.views.checkout import Checkout

app_name = 'store'

urlpatterns = [

    path('products', products, name="products"),
    path('cart', Cart.as_view(), name="cart"),
    path('cart/checkout', Checkout.as_view(), name="checkout"),
    path('minus_quantity', minus_quantity, name="minus_quantity"),
    path('plus_quantity', plus_quantity, name="plus_quantity"),
    path('remove_product', remove_product,name="remove_product"),
    path('product-detail/<int:pk>', ProductDetail.as_view(), name="product-detail"),

]
