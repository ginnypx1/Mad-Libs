from tkinter import *
from quitter import Quitter

class MadLibs(Frame):
	"creates a mad libs of 'Goldilocks & the 3 Bears'"
	def __init__(self, parent=None):
		Frame.__init__(self, parent)

		# game variables
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

		# create game directions
		directions = Label(self, text='Fill in the blanks!', height=2)
		directions.pack(side=TOP)

		# creates the form for word entries
		self.entries = self.makeform()	

		# creates a button to start the story
		but = Button(self, text='Tell me a story!', height=2, command=(lambda: self.fetch(self.entries)))
		but.pack(side=TOP, fill=BOTH)

	# create a button to store variables
	def fetch(self, answers):
		"stores variables and starts the story"
		self.story1(answers)
		#for answer in answers:
		#	print('Input => %s' % answer.get())
		
	def makeform(self):
		answers = []
		for question in self.questions:
			row = Frame(self)
			lab = Label(row, text=question)
			ent = Entry(row)
			row.pack(side=TOP, fill=X)
			lab.pack(side=LEFT)
			ent.pack(side=RIGHT)
			answers.append(ent)
		return answers

	# story part 1
	def story1(self, answers):
		story = Toplevel()
		line = """{} AND THE THREE {}S

Once upon a time, {} went for a walk in the {}. Pretty soon, {} came upon a house. {} knocked, and when no one answered, {} walked right in.

At the table in the kitchen, there were three bowls of {}. {} was hungry, and tasted the {} from the first bowl.

"This {} is too {}!" {} exclaimed.

So, {} tasted the {} from the second bowl.

"This {} is too {}!" {} said.

So, {} tasted the last bowl of {}.

"Ahhhh, this {} is just right," {} said happily and ate it all up.
		""".format((answers[0].get().upper()), (answers[1].get().upper()), answers[0].get(), answers[2].get(), answers[0].get(), answers[0].get(), answers[0].get(), answers[3].get(), answers[0].get(), answers[3].get(), answers[3].get(), answers[4].get(), answers[0].get(), answers[0].get(), answers[3].get(), answers[3].get(), answers[5].get(), answers[0].get(), answers[0].get(), answers[3].get(), answers[3].get(), answers[0].get())

		pg1 = Text(story, wrap=WORD)
		pg1.insert(1.0, line)
		pg1.pack(side=TOP)

		pg1_btn = Button(story, text='Keep going!', height=2, command=(lambda: self.story2(answers)))
		pg1_btn.pack(side=TOP, fill=BOTH)

	# story part 2
	def story2(self, answers):
		story2 = Toplevel()
		line2 = """After {} had eaten the three {}'s breakfasts, {} was feeling a little tired. So {} walked into the living room and saw 3 {}s. {} sat in the first {} to rest {}'s feet.

"This {} is too {}!" {} exclaimed.

So {} sat in the second {}.

"This {} is too {}!" {} whined.

So {} tried the last and smallest {}.

"Ahhhh, this {} is just right," {} sighed. But just as {} settled down into the {} to rest, it broke into pieces!

{} had just about enough by now, so {} went upstairs to the bedroom. {} lay down in the first {}, but it was too {}. Then {} lay down in the second {}, but it was too {}. Then {} lay down in the third {} and it was just right. {} fell asleep.
		""".format(answers[0].get(), answers[1].get(), answers[0].get(), answers[0].get(), answers[6].get(), answers[0].get(), answers[6].get(), answers[0].get(), answers[6].get(), answers[7].get(), answers[0].get(), answers[0].get(), answers[6].get(), answers[6].get(), answers[8].get(), answers[0].get(), answers[0].get(), answers[6].get(), answers[6].get(), answers[0].get(), answers[0].get(), answers[6].get(), answers[0].get(), answers[0].get(), answers[0].get(), answers[9].get(), answers[10].get(), answers[0].get(), answers[9].get(), answers[11].get(), answers[0].get(), answers[9].get(), answers[0].get())

		pg2 = Text(story2, wrap=WORD)
		pg2.insert(1.0, line2)
		pg2.pack(side=TOP)

		pg2_btn = Button(story2, text='Tell me the rest!', height=2, command=(lambda: self.story3(answers)))
		pg2_btn.pack(side=TOP, fill=BOTH)

	# story part 3
	def story3(self, answers):
		story3 = Toplevel()
		line3 = """As {} was sleeping, the three {}s came home.

"Someone's been eating my {}," growled the Papa {}.

"Someone's been eating my {}," said the Mama {}.

"Someone's been eating my {}, and they ate it all up!" cried the Baby {}.

"Someone's been sitting in my my {}," growled the Papa {}.

"Someone's been sitting in my {}," said the Mama {}.

"Someone's been sitting in my {}, and they broke it all to pieces!" cried the Baby {}.

They decided to look around some more and when they got upstairs to the bedroom, Papa {} growled, "Someone's been sleeping in my {}!"

"Someone's been sleeping in my {}, too!" said the Mama {}.

"Someone's been sleeping in my {} and they're still there!" exclaimed Baby {}.
		""".format(answers[0].get(), answers[1].get(), answers[3].get(), answers[1].get(), answers[3].get(), answers[1].get(), answers[3].get(), answers[1].get(), answers[6].get(), answers[1].get(), answers[6].get(), answers[1].get(), answers[6].get(), answers[1].get(), answers[1].get(), answers[9].get(), answers[9].get(), answers[1].get(), answers[9].get(), answers[1].get())

		pg3 = Text(story3, wrap=WORD)
		pg3.insert(1.0, line3)
		pg3.pack(side=TOP)

		pg3_btn = Button(story3, text='What is going to happen?', height=2, command=(lambda: self.story4(answers)))
		pg3_btn.pack(side=TOP, fill=BOTH)

	def story4(self, answers):
		last = Toplevel()
		last_line = """Just then, {} woke up and saw the three {}s. {} screamed, "Help!" and jumped up and ran out of the room. {} ran down the stairs, opened the door, and ran away into the forest. And {} never returned to the home of the three {}s. 

But the three {}s never stopped hunting them, not until they day they all died.

THE END
		""".format(answers[0].get(), answers[1].get(), answers[0].get(), answers[0].get(), answers[0].get(), answers[1].get(), answers[1].get())

		pg4 = Text(last, wrap=WORD)
		pg4.insert(1.0, last_line)
		pg4.pack(side=TOP)

		Quitter(last).pack(side=TOP, fill=BOTH)


if __name__ == '__main__':
	root = Tk()
	root.title('Mad Libs!')
	ml = MadLibs(root)
	ml.pack(side=TOP)
	root.mainloop()