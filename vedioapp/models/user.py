from django.db import models
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    email_code = models.CharField(max_length=255, verbose_name='邮箱的验证码')
    email_check = models.SmallIntegerField(default=0, verbose_name='邮件是否认证1:认证0:未认证')
    nickname = models.CharField(max_length=100, verbose_name='昵称')
    head_img = models.ImageField(upload_to='image/%Y/%m/%d', verbose_name='用户头像')

    def __str__(self):
        return u'%s %s ' % (self.email, self.nickname)

    class Meta:
        db_table = "dp_users"
        verbose_name = '用户表'
        verbose_name_plural = verbose_name
