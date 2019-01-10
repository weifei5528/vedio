from django.urls import path, re_path
from vedioapp.views import index as view_index
from vedioapp.views import login as login_view
from vedioapp.views import user as user_view
PRE = '.html'


urlpatterns = [
    path('', view_index.index, name="index"),
    path('index'+PRE, view_index.index, name="index"),
    # path('info/<int:id>'+PRE, 'book_view.info'),
    path('login'+PRE, login_view.login, name='login'),
    # re_path(r'^login'+PRE+"(\?next=*)?", login_view.login, name='login'),
    path('account'+PRE, user_view.account),
    path('register'+PRE, login_view.register, name='register')

]