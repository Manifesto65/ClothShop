# Generated by Django 3.2.9 on 2021-11-11 10:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0010_user_address'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='first_name',
            field=models.CharField(blank=True, max_length=150, verbose_name='first name'),
        ),
    ]
