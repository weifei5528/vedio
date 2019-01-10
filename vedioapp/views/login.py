from django.shortcuts import render, redirect, reverse
from vedioapp.dao.user import User as UserDao
from vedioapp.decorators import check_session
from django.core import serializers
from django.http import HttpResponse, JsonResponse
from django.contrib import auth
from vedioapp.util.common import Common
from django.contrib.auth import authenticate, login, logout


def login(request):

    if request.method == 'GET':
        context = {}
        next = request.GET.get('next', None)
        context['next'] = next
        return render(request, 'login/login.html', context)
    else:
        username = request.POST.get('username', None)
        password = request.POST.get('password', None)
        user = auth.authenticate(request, username=username, password=password)
        if user is not None and user.is_active:
            auth.login(request, user)
        else:
            return redirect(reverse('login'))

        next = request.POST.get('next', None)
        if next is not None:
            return redirect(next)
        else:
            return redirect(reverse('index'))


# 退出登录
def logout(request):
    auth.logout(request)
    return redirect(reverse('index'))


# 用户注册
def register(request):
    if request.method == 'GET':
        return render(request, 'login/login.html')
    else:
        nickname = request.POST.get('nickname', None)
        return JsonResponse({"info": '测试'})
        # pass



