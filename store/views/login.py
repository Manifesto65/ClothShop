from django.shortcuts import  render,redirect
from django.contrib.auth.hashers import check_password
from store.models import User
from django.views import View




class Login(View):
    def get(self, request):
        return render(request, 'login.html')

    def post(self, request):
        postData = request.POST
        username = postData.get('user')
        password = postData.get('pass')
        print(postData)
        value = {
            'user': username
        }

        user = User.get_user_by_id(username)
        print(user)
        error_message = None
        if user:
            flag = check_password(password, user.password)
            if flag:
                request.session['user_id'] = user.id
                request.session['username'] = user.username
                return redirect('homepage')
            else:
                error_message = 'Username or password is invalid'

        else:
            error_message = 'Username or password is invalid'

        return render(request, 'login.html', {'error': error_message, 'value': value})

def logout(request):
    request.session.clear()
    return redirect('login')