from django.core.urlresolvers import reverse
from django.test import TestCase

# Create your tests here.
class ViewTest(TestCase):
	def test_story_view(self):
		resp = self.client.get(reverse('madlibs:story'))
		self.assertEqual(resp.status_code, 200)
		self.assertTemplateUsed(resp, 'madlibs/story.html')
