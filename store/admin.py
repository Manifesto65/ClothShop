from django.contrib import admin
from .models import Category, Product, User, UserProfile,ProductImage,Order
from django.forms import Textarea
from django.db import models


# Register your models here.
class ProductInline(admin.TabularInline):
    model = Product
    extra = 1
    # formfield_overrides = {
    #     models.TextField: {'widget': Textarea(
    #         attrs={'rows': 1,
    #                'cols': 40})},
    # }


class ProductImageAdmin(admin.StackedInline):
    model = ProductImage



class CategoryAdmin(admin.ModelAdmin):
    model = Category
    inlines = [ProductInline]


class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'price', 'discount_price', 'category', 'description', 'image']
    search_fields = ['title']
    list_filter = ['is_featured', 'is_latest', 'is_exclusive']
    inlines = [ProductImageAdmin]

    class Meta:
        model = Product


admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(User)
admin.site.register(Order)
admin.site.register(UserProfile)
