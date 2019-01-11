from vedioapp.dao.common import Common
from vedioapp.util.common import Common as CommonUtil
from vedioapp.models.user import User as UserModel
from django.db.models import Q


class User(Common):
    """
    添加用户
    """
    @staticmethod
    def add_user(username, email, password, nickname=None):
        if not User.check_email_exists(username, email):
            return False
        user = UserModel.objects.create_user(username, email, password, nickname=nickname)
        if user:
            user.save()
            return user
        else:
            return False

    """
    检查用户名和邮箱是否存在
    """
    @staticmethod
    def check_email_exists(username, email):
        count = UserModel.objects.filter(Q(username=username) | Q(email=email)).count()
        if count:
            return False
        else:
            return True




