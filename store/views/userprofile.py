from django.shortcuts import render
from django.urls import reverse
from store.forms import UserForm
from store.models import  User
from django.views import generic



def userprofile(request, user_id):
    user = User.objects.get(id=user_id)
    print(user)
    data = {
        'user': user
    }
    return render(request, "userprofile.html", data)


class UserUpdateView(generic.UpdateView):
    template_name = "update_user_profile.html"
    queryset = User.objects.all()
    form_class = UserForm

    def get_success_url(self):
        return reverse("homepage")