# Generated by Django 2.2.9 on 2021-07-08 07:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('store', '0006_auto_20210707_1228'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='avatar',
            field=models.ImageField(blank=True, default='user.jpg', null=True, upload_to='upload/avatar'),
        ),
    ]
