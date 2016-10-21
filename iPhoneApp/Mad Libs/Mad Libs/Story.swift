//
//  Story.swift
//  Mad Libs
//
//  Created by Ginny Pennekamp on 10/18/16.
//  Copyright © 2016 GhostBirdGames. All rights reserved.
//

import Foundation

var questions: [String] = [
    "What is your name?",
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
    "Last adjective, I promise:"
]

var story: [String] = [
    "\(answers[0].uppercased()) AND THE THREE \(answers[1].uppercased())S",
    "  Once upon a time, \(answers[0]) went for a walk in the \(answers[2]).  Pretty soon, \(answers[0]) came upon a house.  \(answers[0]) knocked, and when no one answered, \(answers[0]) walked right in.",
    "  At the table in the kitchen, there were three bowls of \(answers[3]).  \(answers[0]) was hungry, and tasted the \(answers[3]) from the first bowl. \n\n  \"This \(answers[3]) is too \(answers[4])!\" \(answers[0]) exclaimed. \n\n  So, \(answers[0]) tasted the \(answers[3]) from the second bowl. \n\n  \"This \(answers[3]) is too \(answers[5])!\" \(answers[0]) said. \n\n  So, \(answers[0]) tasted the last bowl of \(answers[3]). \n\n  \"Ahhhh, this \(answers[3]) is just right,\" \(answers[0]) said happily and ate it all up.",
    "  After \(answers[0]) had eaten the three \(answers[1])'s breakfasts, \(answers[0]) was feeling a little tired.  So \(answers[0]) walked into the living room and saw three \(answers[6])s.  \(answers[0]) sat in the first \(answers[6]) to rest \(answers[0])'s feet. \n\n  \"This \(answers[6]) is too \(answers[7])!\" \(answers[0]) exclaimed. \n\n  So \(answers[0]) sat in the second \(answers[6]). \n\n  \"This \(answers[6]) is too \(answers[8])!\" \(answers[0]) whined. \n\n  So \(answers[0]) tried the last and smallest \(answers[6]). \n\n  \"Ahhhh, this \(answers[6]) is just right,\" \(answers[0]) sighed.  But just as \(answers[0]) settled down into the \(answers[6]) to rest, it broke into pieces!",
    "  \(answers[0]) had just about enough by now, so \(answers[0]) went upstairs to the bedroom.  \(answers[0]) lay down in the first \(answers[9]), but it was too \(answers[10]).  Then \(answers[0]) lay down in the second \(answers[9]), but it was too \(answers[11]).  Then \(answers[0]) lay down in the third \(answers[9]) and it was just right. \n\n  \(answers[0]) fell asleep.",
    "  As \(answers[0]) was sleeping, the three \(answers[1])s came home. \n\n  \"Someone's been eating my \(answers[3]),\" growled the Papa \(answers[1]). \n\n  \"Someone's been eating my \(answers[3]),\" said the Mama \(answers[1]). \n\n  \"Someone's been eating my \(answers[3]), and they ate it all up!\" cried the Baby \(answers[1]).",
    "  \"Someone's been sitting in my \(answers[6]),\" growled the Papa \(answers[1]). \n\n  \"Someone's been sitting in my \(answers[6]),\" said the Mama \(answers[1]). \n\n  \"Someone's been sitting in my \(answers[6]), and they broke it all to pieces!\" cried the Baby \(answers[1]).",
    "  They decided to look around some more and when they got upstairs to the bedroom, Papa \(answers[1]) growled, \"Someone's been sleeping in my \(answers[9])!\" \n\n  \"Someone's been sleeping in my \(answers[9]), too!\" said the Mama \(answers[1]). \n\n  \"Someone's been sleeping in my \(answers[9]) and they're still there!\" exclaimed Baby \(answers[1]).",
    "  Just then, \(answers[0]) woke up and saw the three \(answers[1])s.  \(answers[0]) screamed, \"Help!\" and jumped up and ran out of the room.  \(answers[0]) ran down the stairs, opened the door, and ran away into the forest.  And \(answers[0]) never returned to the home of the three \(answers[1])s. \n\n  But the three \(answers[1])s never stopped hunting them, not until they day they all died.",
    "THE END"
]
