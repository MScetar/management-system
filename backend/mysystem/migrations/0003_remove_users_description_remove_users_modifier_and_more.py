# Generated by Django 4.1.8 on 2023-12-19 10:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('mysystem', '0002_alter_users_identity_alter_users_mobile'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='users',
            name='description',
        ),
        migrations.RemoveField(
            model_name='users',
            name='modifier',
        ),
        migrations.AlterField(
            model_name='users',
            name='id',
            field=models.AutoField(help_text='Id', primary_key=True, serialize=False, verbose_name='Id'),
        ),
    ]
