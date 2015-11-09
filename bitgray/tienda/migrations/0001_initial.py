# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('documento', models.IntegerField()),
                ('nombres', models.CharField(max_length=80)),
                ('detalles', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Compra',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('precio', models.IntegerField()),
                ('descripcion', models.TextField()),
                ('fecha', models.DateTimeField(auto_now_add=True)),
                ('cliente', models.ForeignKey(to='tienda.Cliente')),
            ],
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('producto', models.CharField(max_length=40)),
                ('precio', models.IntegerField()),
                ('descripcion', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Sede',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('sede', models.CharField(max_length=40)),
                ('direccion', models.CharField(max_length=40)),
            ],
        ),
        migrations.AddField(
            model_name='compra',
            name='producto',
            field=models.ForeignKey(to='tienda.Producto'),
        ),
        migrations.AddField(
            model_name='compra',
            name='sede',
            field=models.ForeignKey(blank=True, to='tienda.Sede', null=True),
        ),
    ]
