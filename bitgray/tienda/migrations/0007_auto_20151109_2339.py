# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0006_auto_20151109_2337'),
    ]

    operations = [
        migrations.AlterField(
            model_name='compra',
            name='producto',
            field=models.ForeignKey(blank=True, to='tienda.Producto', null=True),
        ),
    ]
