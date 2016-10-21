//
//  StoryViewController.swift
//  Mad Libs
//
//  Created by Ginny Pennekamp on 10/21/16.
//  Copyright © 2016 GhostBirdGames. All rights reserved.
//

import UIKit

var answers: [String] = []

class StoryViewController: UIViewController {

    @IBOutlet weak var lblStoryText: UILabel!
    @IBOutlet weak var btnTellMeMore: UIButton!
    
    var storyPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // display the title
        lblStoryText.text = story[0]
        lblStoryText.textColor = UIColor.orange
        lblStoryText.font = lblStoryText.font.withSize(33)
        // btnTellMeMore text is "Tell My Story"
        btnTellMeMore.setTitle("Tell My Story", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnTellMeMoreACTION(_ sender: AnyObject) {
        storyPage += 1
        
        if storyPage == 9 {
            // Diplay THE END and PLAY AGAIN
            lblStoryText.text = story[storyPage]
            lblStoryText.textColor = UIColor.orange
            lblStoryText.textAlignment = .center
            lblStoryText.font = lblStoryText.font.withSize(33)
            btnTellMeMore.setTitle("Play Again", for: UIControlState.normal)
        } else if storyPage == 10 {
            // reset game and return to home screen
            storyPage = 0
            timesViewed = 0
            answers = []
            // segue to initial view controller
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "questionView") as! ViewController
            self.present(nextViewController, animated:true, completion:nil)
        } else {
            // display the next page of the story
            lblStoryText.text = story[storyPage]
            lblStoryText.textColor = UIColor.black
            lblStoryText.font = lblStoryText.font.withSize(20)
            lblStoryText.textAlignment = .justified
            btnTellMeMore.setTitle("Tell Me More", for: UIControlState.normal)
        }
        
    }

}
