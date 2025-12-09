
from django.contrib import admin
from django.urls import path,include
from user import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/login/', views.api_login, name='api_login'),
]
