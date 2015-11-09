# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tienda', '0002_auto_20151107_2002'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cliente',
            name='documento',
            field=models.IntegerField(unique=True),
        ),
    ]
