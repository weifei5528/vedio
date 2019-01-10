"""
用户登录重写
"""
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from vedioapp.models.user import User


class CustomBackend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = User.objects.get(Q(username=username) | Q(email=username))
            user.set_password(password)
            user.save()
            if user.check_password(password):
                return user
        except Exception as e:  #可以捕获除与程序退出sys.exit()相关之外的所有异常
            return None

