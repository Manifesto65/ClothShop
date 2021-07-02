from django.contrib import admin
from .models import Category, Product, User, UserProfile
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


class CategoryAdmin(admin.ModelAdmin):
    model = Category
    inlines = [ProductInline]


class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'price', 'discount_price', 'category', 'description', 'image']
    search_fields = ['title']


admin.site.register(Category, CategoryAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(User)
admin.site.register(UserProfile)
