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

    @IBOutlet weak var lblStoryText: UILabel!
    @IBOutlet weak var btnTellMeMore: UIButton!
    
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
        lblStoryText.text = story.story[0]
        lblStoryText.textColor = UIColor.orange
        lblStoryText.font = lblStoryText.font.withSize(33)
        
        // btnTellMeMore text is "Tell My Story"
        btnTellMeMore.setTitle("Tell My Story", for: UIControlState.normal)
    }
    
    
    @IBAction func btnTellMeMoreACTION(_ sender: AnyObject) {
        
        guard let story = self.story else {
            print("There is no story to tell.")
            return
        }
        
        self.storyPage += 1
        
        if self.storyPage == (story.story.count - 1) {
            // Diplay THE END and PLAY AGAIN
            lblStoryText.text = story.story[storyPage]
            lblStoryText.textColor = UIColor.orange
            lblStoryText.textAlignment = .center
            lblStoryText.font = lblStoryText.font.withSize(33)
            btnTellMeMore.setTitle("Play Again", for: UIControlState.normal)
        } else if self.storyPage == story.story.count {
            // reset game and return to home screen
            storyPage = 0
            story.timesViewed = 0
            story.answers.removeAll()
            story.story.removeAll()
            // segue to initial view controller
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let questionView = storyBoard.instantiateViewController(withIdentifier: "questionView") as! ViewController
            self.present(questionView, animated:true, completion:nil)
        } else {
            // display the next page of the story
            lblStoryText.text = story.story[storyPage]
            lblStoryText.textColor = UIColor.black
            lblStoryText.font = lblStoryText.font.withSize(20)
            lblStoryText.textAlignment = .justified
            btnTellMeMore.setTitle("Tell Me More", for: UIControlState.normal)
        }
        
    }

}
