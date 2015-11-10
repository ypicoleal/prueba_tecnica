# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0003_auto_20151108_0055'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cliente',
            name='detalles',
            field=models.TextField(null=True, blank=True),
        ),
    ]
