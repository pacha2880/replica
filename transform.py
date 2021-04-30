import os

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "replica.settings")
import django
import pandas as pd
import random

django.setup()

from django.contrib.auth.models import User
from mireplica.models import *


print(User.objects.all())
