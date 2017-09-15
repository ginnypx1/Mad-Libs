//
//  StoryViewController.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/10/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var storyTextLabel: UILabel!
    @IBOutlet weak var tellStoryButton: UIButton!
    
    // MARK: - Properties
    
    var story: Story?
    var storyPage = 0
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let story = self.story else {
            print("There is no story to tell.")
            return
        }
        
        story.generateStory()
        
        // display the title
        storyTextLabel.text = story.story[0]
        storyTextLabel.textColor = UIColor.orange
        storyTextLabel.font = storyTextLabel.font.withSize(33)
        
        // btnTellMeMore text is "Tell My Story"
        tellStoryButton.setTitle("Tell My Story", for: UIControlState.normal)
    }
    
    @IBAction func tellStory(_ sender: UIButton) {
        
        guard let story = self.story else {
            print("There is no story to tell.")
            return
        }
        
        self.storyPage += 1
        
        if self.storyPage == (story.story.count - 1) {
            // Diplay THE END and PLAY AGAIN
            storyTextLabel.text = story.story[storyPage]
            storyTextLabel.textColor = UIColor.orange
            storyTextLabel.textAlignment = .center
            storyTextLabel.font = storyTextLabel.font.withSize(33)
            tellStoryButton.setTitle("Play Again", for: UIControlState.normal)
        } else if self.storyPage == story.story.count {
            // reset game and return to home screen
            storyPage = 0
            story.timesViewed = 0
            story.answers.removeAll()
            story.story.removeAll()
            // segue to initial view controller
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let questionView = storyBoard.instantiateViewController(withIdentifier: "questionView") as! FormViewController
            questionView.modalTransitionStyle = .partialCurl
            present(questionView, animated:true, completion:nil)
        } else {
            // display the next page of the story
            storyTextLabel.text = story.story[storyPage]
            storyTextLabel.textColor = UIColor.black
            storyTextLabel.font = storyTextLabel.font.withSize(20)
            storyTextLabel.textAlignment = .justified
            tellStoryButton.setTitle("Tell Me More", for: UIControlState.normal)
        }
    }

}
