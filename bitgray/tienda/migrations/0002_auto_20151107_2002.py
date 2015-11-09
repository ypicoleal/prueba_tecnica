# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='compra',
            name='precio',
            field=models.IntegerField(null=True, blank=True),
        ),
    ]
