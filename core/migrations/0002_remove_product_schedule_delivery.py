# Generated by Django 4.1.5 on 2023-01-11 00:18

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='schedule_delivery',
        ),
    ]
