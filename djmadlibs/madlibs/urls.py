from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^story/', views.show_story, name="story"),
]