from django.shortcuts import render, HttpResponse
from .models import Product,User
from django.views import View
# Create your views here.

def index(request):
    latest = Product.objects.filter(is_latest = True)
    exclusive = Product.objects.get(is_exclusive=True)
    featured = Product.objects.filter(is_featured=True)
    data ={
        'latest':latest,
        'exclusive':exclusive,
<<<<<<< HEAD
        'featured':featured,
=======
        'featured':featured

>>>>>>> cef6260acd4411fe25df93870986c014efbe16a3

    }
    return render(request, "landing_page.html",data)


def home(request):
    return HttpResponse("hello")


class Login(View):
    def get(self, request):
        return render(request, 'account.html')
    def post(self,request):
        postData = request.POST
        username = postData.get('user')
        password = postData.get('pass')
        value = {
            'user': username
        }
        user = User.objects.get(username=username)
        if user:
            flag = check_password(password, customer.password)
            if flag:
                request.session['customer_id'] = customer.id

                if Login.return_url:
                    return HttpResponseRedirect(Login.return_url)
                else:
                    Login.return_url = None
                    return redirect('homepage')


            else:
                error_message = 'Email or password is invalid'

        else:
            error_message = 'Email or password is invalid'

        return render(request, 'login.html', {'error': error_message, 'values': value})


