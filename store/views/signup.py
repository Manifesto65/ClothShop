from django.shortcuts import render, HttpResponse, redirect
from django.contrib.auth.hashers import  make_password
from store.models import  User
from django.views import View


class Signup(View):
    def get(self, request):
        return render(request, 'signup.html')

    def post(self, request):
        postData = request.POST
        username = postData.get('user')
        email = postData.get('email')
        password = postData.get('pass')
        print(postData)
        value = {
            'user': username,
            'email': email
        }

        def validateUser(user):
            error_message = None
            if not user.username:
                error_message = 'Username is required'
            elif len(user.username) < 3:
                error_message = 'Username should be more than 2 letters'
            elif len(user.email) < 5:
                error_message = 'email should be more than 5 letters'
            elif len(user.password) < 4:
                error_message = 'password should be more than 2 letters'
            elif user.isExist():
                error_message = 'Username already exists'

            return error_message

        error_message = None
        user = User(username=username, email=
        email, password=password)

        error_message = validateUser(user)

        if not error_message:
            # saving
            user.password = make_password(user.password)
            user.save()
            return redirect('login')

        return render(request, 'signup.html', {'error': error_message, 'value': value})