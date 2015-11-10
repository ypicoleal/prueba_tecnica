# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0005_auto_20151109_2333'),
    ]

    operations = [
        migrations.AlterField(
            model_name='compra',
            name='cliente',
            field=models.ForeignKey(blank=True, to='tienda.Cliente', null=True),
        ),
    ]
