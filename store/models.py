from django.db import models
from django.db.models.signals import post_save
from django.contrib.auth.models import AbstractUser



# Create your models here.
class User(AbstractUser):
    dob = models.DateField(blank=True, null=True)
    avatar = models.ImageField(upload_to="uploads/avatar" , blank=True, null=True)
    address = models.CharField(max_length=20, blank=True,null=True)

    @staticmethod
    def get_user_by_id(username):
        try:
            print(username)
            return User.objects.get(username=username)

        except:
            return False

    def isExist(self):
        if User.objects.filter(email=self.email):
            return True


class UserProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username


class Category(models.Model):
    name = models.CharField(max_length=20)

    class Meta:
        verbose_name_plural = 'Categories'

    def __str__(self):
        return self.name


class Product(models.Model):
    title = models.CharField(max_length=100)
    price = models.FloatField()
    discount_price = models.FloatField(blank=True, null=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    description = models.TextField()
    created = models.DateTimeField(auto_now_add=True)
    image = models.ImageField(upload_to='uploads/products/', blank=True)
    is_featured = models.BooleanField(default=False)
    is_latest = models.BooleanField(default=False)
    is_exclusive = models.BooleanField(default=False)

    def __str__(self):
        return self.title


class ProductImage(models.Model):
    product = models.ForeignKey(Product, default=None, on_delete=models.CASCADE)
    images = models.FileField(upload_to='uploads/products/')

    def __str__(self):
        return self.product.title


def user_created_signal(sender, instance, created, **kwargs):
    print(instance, created)
    if created:
        UserProfile.objects.create(user=instance)


post_save.connect(user_created_signal, sender=User)
