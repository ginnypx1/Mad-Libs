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
    
    var story: Story!
    var storyPage: Int = 0
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        story.generateStory()
        displayStoryTitle()
    }
    
    // MARK: - Tell Story
    
    func displayStoryTitle() {
        let text = story.story[0]
        storyTextLabel.text = text
        storyTextLabel.accessibilityLabel = text
        storyTextLabel.textColor = UIColor.orange
        storyTextLabel.font = storyTextLabel.font.withSize(33)
        tellStoryButton.setTitle("Tell My Story", for: UIControlState.normal)
    }
    
    func displayEnd() {
        let text = story.story[storyPage]
        storyTextLabel.text = text
        storyTextLabel.accessibilityLabel = text
        storyTextLabel.textColor = UIColor.orange
        storyTextLabel.textAlignment = .center
        storyTextLabel.font = storyTextLabel.font.withSize(33)
        tellStoryButton.setTitle("Play Again", for: UIControlState.normal)
    }
    
    func displayNextPage() {
        AnimationManager.positionStoryTextOffscreen(storyTextLabel)
        let text = story.story[storyPage]
        storyTextLabel.text = text
        storyTextLabel.accessibilityLabel = text
        storyTextLabel.textColor = UIColor.black
        storyTextLabel.font = storyTextLabel.font.withSize(20)
        storyTextLabel.textAlignment = .justified
        tellStoryButton.setTitle("Tell Me More", for: UIControlState.normal)
        AnimationManager.zoomStoryInFromRight(storyTextLabel)
    }
    
    @IBAction func tellStory(_ sender: UIButton) {
        // turn the page
        self.storyPage += 1
        
        if self.storyPage == (story.story.count - 1) {
            displayEnd()
        } else if self.storyPage == story.story.count {
            resetStory()
        } else {
            displayNextPage()
        }
    }
    
    // MARK: - Navigation
    
    func resetStory() {
        storyPage = 0
        story.timesViewed = 0
        story.answers.removeAll()
        story.story.removeAll()
        
        dismiss(animated:true, completion:nil)
    }

}
