//
//  Story.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/10/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import Foundation

class Story {
    let questions: [String] = [
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
    
    var answers: [String] = []
    var story: [String] = []
    var timesViewed = 0
    
    func generateStory() {
        let answer1 = answers[0].capitalizingFirstLetter()
        let answer2 = answers[1]
        let answer3 = answers[2]
        let answer4 = answers[3]
        let answer5 = answers[4]
        let answer6 = answers[5]
        let answer7 = answers[6]
        let answer8 = answers[7]
        let answer9 = answers[8]
        let answer10 = answers[9]
        let answer11 = answers[10]
        let answer12 = answers[11]
        
        self.story.append("\(answer1.uppercased()) AND THE THREE \(answer2.uppercased())S")
        self.story.append("  Once upon a time, \(answer1) went for a walk in the \(answer3).  Pretty soon, \(answer1) came upon a house.  \(answer1) knocked, and when no one answered, \(answer1) walked right in.")
        self.story.append("  At the table in the kitchen, there were three bowls of \(answer4).  \(answer1) was hungry, and tasted the \(answer4) from the first bowl. \n\n  \"This \(answer4) is too \(answer5)!\" \(answer1) exclaimed. \n\n  So, \(answer1) tasted the \(answer4) from the second bowl. \n\n  \"This \(answer4) is too \(answer6)!\" \(answer1) said. \n\n  So, \(answer1) tasted the last bowl of \(answer4). \n\n  \"Ahhhh, this \(answer4) is just right,\" \(answer1) said happily and ate it all up.")
        self.story.append("  After \(answer1) had eaten the three \(answer2)'s breakfasts, \(answer1) was feeling a little tired.  So \(answer1) walked into the living room and saw three \(answer7)s.  \(answer1) sat in the first \(answer7) to rest \(answer1)'s feet. \n\n  \"This \(answer7) is too \(answer8)!\" \(answer1) exclaimed. \n\n  So \(answer1) sat in the second \(answer7). \n\n  \"This \(answer7) is too \(answer9)!\" \(answer1) whined. \n\n  So \(answer1) tried the last and smallest \(answer7). \n\n  \"Ahhhh, this \(answer7) is just right,\" \(answer1) sighed.  But just as \(answer1) settled down into the \(answer7) to rest, it broke into pieces!")
        self.story.append("  \(answer1) had just about enough by now, so \(answer1) went upstairs to the bedroom.  \(answer1) lay down in the first \(answer10), but it was too \(answer11).  Then \(answer1) lay down in the second \(answer10), but it was too \(answer12).  Then \(answer1) lay down in the third \(answer10) and it was just right. \n\n  \(answer1) fell asleep.")
        self.story.append("  As \(answer1) was sleeping, the three \(answer2)s came home. \n\n  \"Someone's been eating my \(answer4),\" growled the Papa \(answer2). \n\n  \"Someone's been eating my \(answer4),\" said the Mama \(answer2). \n\n  \"Someone's been eating my \(answer4), and they ate it all up!\" cried the Baby \(answer2).")
        self.story.append("  \"Someone's been sitting in my \(answer7),\" growled the Papa \(answer2). \n\n  \"Someone's been sitting in my \(answer7),\" said the Mama \(answer2). \n\n  \"Someone's been sitting in my \(answer7), and they broke it all to pieces!\" cried the Baby \(answer2).")
        self.story.append("  They decided to look around some more and when they got upstairs to the bedroom, Papa \(answer2) growled, \"Someone's been sleeping in my \(answer10)!\" \n\n  \"Someone's been sleeping in my \(answer10), too!\" said the Mama \(answer2). \n\n  \"Someone's been sleeping in my \(answer10) and they're still there!\" exclaimed Baby \(answer2).")
        self.story.append("  Just then, \(answer1) woke up and saw the three \(answer2)s.  \(answer1) screamed, \"Help!\" and jumped up and ran out of the room.  \(answer1) ran down the stairs, opened the door, and ran away into the forest.  And \(answer1) never returned to the home of the three \(answer2)s. \n\n  But the three \(answer2)s never stopped hunting them, not until they day they all died.")
        self.story.append("THE END")
    }
}
