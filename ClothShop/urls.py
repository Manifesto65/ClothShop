"""ClothShop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from . import settings
from django.conf.urls.static import static

from store.views.login import Login,logout
from store.views.signup import Signup
from store.views.home import index
from store.views.userprofile import userprofile,UserUpdateView



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index, name="homepage"),
    path('login', Login.as_view(), name="login"),
    path('logout', logout, name="logout"),
    path('userprofile/<int:user_id>', userprofile, name="profile"),
    path('update_user/<int:pk>', UserUpdateView.as_view(), name="update_user"),
    path('signup', Signup.as_view(), name="signup"),
    path('store/', include("store.urls",namespace="store")),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
