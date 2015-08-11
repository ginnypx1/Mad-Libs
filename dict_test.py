from tkinter import *
from quitter import Quitter

class MadLibs(Frame):
	"""creates a mad libs of 'Goldilocks & the 3 Bears'"""
	def __init__(self, parent=None):
		Frame.__init__(self, parent)
		# game variables
		self.count = 0

		self. questions = ["What is your name?",
						"What's your favorite animal?",
						"Name a place you want to go:",
						"What would you like to eat?",
						"Adjective please:",
						"Another adjective:",
						"Name a thing:",
						"Adjective please:",
						"Another adjective:",
						"Another object please:",
						"Yet another adjective:",
						"Last adjective, I promise:"]
		self.answers = {}			

		# create game directions
		ent_form = Frame(self).pack(side=LEFT, fill=BOTH)
		directions = Label(ent_form, text='Fill in the blanks!', height=2)
		directions.pack(side=TOP)

		# creates the form for word entries
		self.entries = self.makeform(ent_form)	

		# creates a button to start the story
		but = Button(ent_form, text='Tell me a story!', height=2, command=(lambda: self.fetch(self.entries, story_box)))
		but.pack(side=TOP, fill=BOTH)

		# creates a storybox to display the story
		story_box = Text(self, bd=2, height=20, width=80)
		story_box.pack(side=RIGHT, expand=YES, fill=BOTH)

	# create a button to store variables
	def fetch(self, answers, story_tag):
		"stores variables and starts the story"
		# stores all the answers into the self.answers dictionary
		z = range(0, len(answers))
		y = []
		for answer in answers:
			y.append(answer.get())
		x = list(z)
		self.answers = dict(zip(x, y))
		#self.story(answers, story_tag)
		for k, v in self.answers.items():
			print('Input => {}: {}'.format(k, v))
		
	def makeform(self, ent_tag):
		"creates the answer form"
		ent_answers = []
		for question in self.questions:
			row = Frame(ent_tag)
			lab = Label(row, text=question)
			ent = Entry(row)
			row.pack(side=TOP, fill=X)
			lab.pack(side=LEFT)
			ent.pack(side=RIGHT)
			ent_answers.append(ent)
		return ent_answers
		

if __name__ == '__main__':
	root = Tk()
	root.title('Mad Libs!')
	ml = MadLibs(root)
	ml.pack(side=TOP)
	root.mainloop()