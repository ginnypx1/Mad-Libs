from tkinter import *
from quitter import Quitter

class MadLibs(Frame):
	"""creates a mad libs of 'Goldilocks & the 3 Bears'"""
	def __init__(self, parent=None):
		Frame.__init__(self, parent)
		# game variables
		self.count = 0
		self.ent_answers = []
		self.answers = {}
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
		self.story = []

		# create game directions
		ent_form = Frame(self).pack(side=LEFT)
		directions = Label(ent_form, text='Fill in the blanks!', height=2).pack(side=TOP)
		# creates the form for word entries
		entries = self.makeform(ent_form)	
		# creates a button to start the story
		but = Button(ent_form, text='Tell me a story!', height=2, command=(lambda: self.fetch(story_box)))
		but.pack(side=TOP, fill=BOTH)

		# creates a storybox to display the story
		story_frm = Frame(self).pack(side=RIGHT)
		sbar = Scrollbar(story_frm)
		story_box = Text(story_frm, bd=2, height=20, width=80, wrap=WORD, relief=SUNKEN)
		story_box.insert(1.0, 'Story will go here')
		sbar.config(command=story_box.yview)
		story_box.config(yscrollcommand=sbar.set)
		sbar.pack(side=RIGHT, fill=Y)
		story_box.pack(side=TOP)
		btn_frm = Frame(story_frm).pack(side=TOP)
		Quitter(btn_frm).pack(side=LEFT)
		pg1_btn = Button(btn_frm, text='Keep going!', command=(lambda: self.tell_story(story_box))).pack(side=RIGHT)

	# create a button to store variables
	def fetch(self, story_tag):
		"stores variables and starts the story"
		# stores all the answers into the self.answers dictionary
		self.makelist()
		# fills in the story with the answers
		self.generate_story()
		# starts the story
		return self.tell_story(story_tag)
		
	def makeform(self, ent_tag):
		"creates the answer form"
		for question in self.questions:
			row = Frame(ent_tag)
			lab = Label(row, text=question)
			ent = Entry(row)
			row.pack(side=TOP, fill=X)
			lab.pack(side=LEFT)
			ent.pack(side=RIGHT)
			self.ent_answers.append(ent)
		return self.ent_answers

	def makelist(self):
		"makes a list of the story answers"
		z = range(0, len(self.ent_answers))
		y = []
		for answer in self.ent_answers:
			y.append(answer.get())
		x = list(z)
		self.answers = dict(zip(x, y))
		return self.answers
		#for k, v in self.answers.items():
		#	print('Input => {}: {}'.format(k, v))
		
	def tell_story(self, story_tag):
		"displays the story in portions"
		# puts story into the story box
		story_tag.delete(1.0, END)
		line = self.story[self.count]
		story_tag.insert(1.0, line)
		# changes portion of the story to the next portion
		self.count += 1

	def generate_story(self):
		"fills in the story blanks with the correct answers"
		three_bears = ["""{} AND THE THREE {}S

Once upon a time, {} went for a walk in the {}. Pretty soon, {} came upon a house. {} knocked, and when no one answered, {} walked right in.

At the table in the kitchen, there were three bowls of {}. {} was hungry, and tasted the {} from the first bowl.

"This {} is too {}!" {} exclaimed.

So, {} tasted the {} from the second bowl.

"This {} is too {}!" {} said.

So, {} tasted the last bowl of {}.

"Ahhhh, this {} is just right," {} said happily and ate it all up.
""".format(self.answers[0].upper(), self.answers[1].upper(), self.answers[0], self.answers[2], self.answers[0], self.answers[0], self.answers[0], self.answers[3], self.answers[0], self.answers[3], self.answers[3], self.answers[4], self.answers[0], self.answers[0], self.answers[3], self.answers[3], self.answers[5], self.answers[0], self.answers[0], self.answers[3], self.answers[3], self.answers[0]),
"""After {} had eaten the three {}'s breakfasts, {} was feeling a little tired. So {} walked into the living room and saw 3 {}s. {} sat in the first {} to rest {}'s feet.

"This {} is too {}!" {} exclaimed.

So {} sat in the second {}.

"This {} is too {}!" {} whined.

So {} tried the last and smallest {}.

"Ahhhh, this {} is just right," {} sighed. But just as {} settled down into the {} to rest, it broke into pieces!

{} had just about enough by now, so {} went upstairs to the bedroom. {} lay down in the first {}, but it was too {}. Then {} lay down in the second {}, but it was too {}. Then {} lay down in the third {} and it was just right. {} fell asleep.
""".format(self.answers[0], self.answers[1], self.answers[0], self.answers[0], self.answers[6], self.answers[0], self.answers[6], self.answers[0], self.answers[6], self.answers[7], self.answers[0], self.answers[0], self.answers[6], self.answers[6], self.answers[8], self.answers[0], self.answers[0], self.answers[6], self.answers[6], self.answers[0], self.answers[0], self.answers[6], self.answers[0], self.answers[0], self.answers[0], self.answers[9], self.answers[10], self.answers[0], self.answers[9], self.answers[11], self.answers[0], self.answers[9], self.answers[0]),
"""As {} was sleeping, the three {}s came home.

"Someone's been eating my {}," growled the Papa {}.

"Someone's been eating my {}," said the Mama {}.

"Someone's been eating my {}, and they ate it all up!" cried the Baby {}.

"Someone's been sitting in my my {}," growled the Papa {}.

"Someone's been sitting in my {}," said the Mama {}.

"Someone's been sitting in my {}, and they broke it all to pieces!" cried the Baby {}.

They decided to look around some more and when they got upstairs to the bedroom, Papa {} growled, "Someone's been sleeping in my {}!"

"Someone's been sleeping in my {}, too!" said the Mama {}.

"Someone's been sleeping in my {} and they're still there!" exclaimed Baby {}.
""".format(self.answers[0], self.answers[1], self.answers[3], self.answers[1], self.answers[3], self.answers[1], self.answers[3], self.answers[1], self.answers[6], self.answers[1], self.answers[6], self.answers[1], self.answers[6], self.answers[1], self.answers[1], self.answers[9], self.answers[9], self.answers[1], self.answers[9], self.answers[1]),
"""Just then, {} woke up and saw the three {}s. {} screamed, "Help!" and jumped up and ran out of the room. {} ran down the stairs, opened the door, and ran away into the forest. And {} never returned to the home of the three {}s. 

But the three {}s never stopped hunting them, not until they day they all died.

THE END""".format(self.answers[0], self.answers[1], self.answers[0], self.answers[0], self.answers[0], self.answers[1], self.answers[1])]
		for each in three_bears:
			self.story.append(each)
		return self.story


if __name__ == '__main__':
	root = Tk()
	root.title('Mad Libs!')
	ml = MadLibs(root)
	ml.pack(side=TOP)
	root.mainloop()