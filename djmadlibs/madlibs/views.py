from django.shortcuts import render

# Create your views here.
def show_story(request):
	return render(request, 'madlibs/story.html')