# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0004_auto_20151109_2324'),
    ]

    operations = [
        migrations.AlterField(
            model_name='compra',
            name='descripcion',
            field=models.TextField(null=True, blank=True),
        ),
    ]
