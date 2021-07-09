from django import forms
from .models import User

class DateInput(forms.DateInput):
    input_type = 'dob'

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['first_name','last_name','avatar','address','dob']

        widgets = {
            'dob': DateInput(attrs={'type': 'date', 'style':'width: 165px;'})
        }







