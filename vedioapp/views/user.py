from django.shortcuts import render, reverse
# from book.decorators import check_session
from django.contrib.auth.decorators import login_required


@login_required(login_url='login.html')
def account(request):
    print(request.user)
    return render(request, 'user/account.html')
