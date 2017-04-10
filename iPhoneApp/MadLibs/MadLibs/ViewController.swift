//
//  ViewController.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/10/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - Outlets
    
    @IBOutlet var lblQuestionLabels: [UILabel]!
    @IBOutlet var txtQuestionTextField: [UITextField]!
    @IBOutlet weak var btnKeepGoing: UIButton!
    
    // MARK: - Properties
    
    var story: Story!
    var labelCount = 0
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for textField in txtQuestionTextField {
            textField.delegate = self
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
    
    // MARK: - Text Field Delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for textField in self.view.subviews where textField is UITextField {
            textField.resignFirstResponder()
        }
    }
    
    // MARK: - Ask Questions
    
    func askQuestions() {
        for lbl in lblQuestionLabels {
            lbl.text = story.questions[labelCount]
            labelCount += 1
        }
    }
    
    // MARK: - Tell Story
    
    @IBAction func btnKeepGoingACTION(_ sender: AnyObject) {
        for field in txtQuestionTextField {
            if let answer = field.text {
                story.answers.append(answer)
            }
            field.text = ""
        }
        //print(answers)
        story.timesViewed += 1
        labelCount = 6
        btnKeepGoing.setTitle("Tell Me A Story", for: UIControlState.normal)
        askQuestions()
        
        if story.timesViewed == 2 {
            // segue to story title
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let storyView = storyBoard.instantiateViewController(withIdentifier: "storyView") as! StoryViewController
            storyView.story = self.story
            self.present(storyView, animated:true, completion:nil)
        }
    }
    
}

