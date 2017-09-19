//
//  FormViewController.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/10/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class FormViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet var questionLabels: [UILabel]!
    @IBOutlet var questionTextFields: [UITextField]!
    @IBOutlet weak var keepGoingButton: UIButton!
    
    // MARK: - Properties
    
    var story: Story!
    var labelCount: Int = 0
    
    var textFieldDelegate = FormTextFieldDelegate()
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for textField in questionTextFields {
            textField.delegate = textFieldDelegate
        }
        
        story = Story()

        labelCount = 0
        askQuestions()
    }
    
    // MARK: - Keyboard Notifications
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // subscribe to keyboard notifications
        subscribeToKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // unsubscribe to keyboard notifications
        unsubscribeToKeyboardNotifications()
    }
    
    // MARK: - Ask Questions
    
    func askQuestions() {
        AnimationManager.positionLabelsOffscreen(questionLabels)
        for label in questionLabels {
            label.text = story.questions[labelCount]
            labelCount += 1
        }
        AnimationManager.zoomQuestionsInFromLeft(questionLabels)
    }
    
    func recordAnswers() {
        for field in questionTextFields {
            if let answer = field.text {
                story.answers.append(answer)
            }
            field.text = ""
        }
    }
    
    // MARK: - Tell Story
    
    @IBAction func tellStory(_ sender: UIButton) {
        recordAnswers()
        
        // reset view for next set of questions
        story.timesViewed += 1
        labelCount = 6
        keepGoingButton.setTitle("Tell Me A Story", for: UIControlState.normal)
        askQuestions()
        
        // if questions are answered, present the story
        if story.timesViewed == 2 {
            presentStory()
        }
    }
    
    // MARK: - Navigation
    
    func presentStory() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let storyView = storyBoard.instantiateViewController(withIdentifier: "storyView") as! StoryViewController
        storyView.story = self.story
        storyView.modalTransitionStyle = .partialCurl
        present(storyView, animated:true, completion:nil)
    }
    
}

