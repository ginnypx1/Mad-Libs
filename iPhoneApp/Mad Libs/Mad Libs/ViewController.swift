//
//  ViewController.swift
//  Mad Libs
//
//  Created by Ginny Pennekamp on 10/18/16.
//  Copyright © 2016 GhostBirdGames. All rights reserved.
//

import UIKit

var timesViewed = 0

class ViewController: UIViewController {

    @IBOutlet var lblQuestionLabels: [UILabel]!
    @IBOutlet var txtQuestionTextField: [UITextField]!
    @IBOutlet weak var btnKeepGoing: UIButton!
    
    var labelCount = 0
    
    // MARK: Apple Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timesViewed = 0
        labelCount = 0
        askQuestions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for textField in self.view.subviews where textField is UITextField {
                textField.resignFirstResponder()
        }
    
    }
    
    // MARK: - Present questions
    
    func askQuestions() {
        for lbl in lblQuestionLabels {
            lbl.text = questions[labelCount]
            labelCount += 1
        }
    }

    @IBAction func btnKeepGoingACTION(_ sender: AnyObject) {
        for field in txtQuestionTextField {
            if let answer = field.text {
                answers.append(answer)
            }
            field.text = ""
        }
        print(answers)
        timesViewed += 1
        labelCount = 6
        btnKeepGoing.setTitle("Tell Me A Story", for: UIControlState.normal)
        askQuestions()
        
        if timesViewed == 2 {
            // segue to story title
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "storyView") as! StoryViewController
            self.present(nextViewController, animated:true, completion:nil)
        }
    }

}

