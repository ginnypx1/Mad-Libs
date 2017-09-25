//
//  MadLibsUITests.swift
//  MadLibsUITests
//
//  Created by Ginny Pennekamp on 9/25/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest

class MadLibsUITests: XCTestCase {
    
    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMadLibs() {
        
        // test textFields exists
        let question1AnswerTextField = app.textFields["Question1AnswerTextField"]
        let question2AnswerTextField = app.textFields["Question2AnswerTextField"]
        let question3AnswerTextField = app.textFields["Question3AnswerTextField"]
        let question4AnswerTextField = app.textFields["Question4AnswerTextField"]
        let question5AnswerTextField = app.textFields["Question5AnswerTextField"]
        let question6AnswerTextField = app.textFields["Question6AnswerTextField"]
        XCTAssert(question1AnswerTextField.exists)
        XCTAssert(question2AnswerTextField.exists)
        XCTAssert(question3AnswerTextField.exists)
        XCTAssert(question4AnswerTextField.exists)
        XCTAssert(question5AnswerTextField.exists)
        XCTAssert(question6AnswerTextField.exists)
        
        // test answer button exists
        let answerQuestionsButton = app/*@START_MENU_TOKEN@*/.buttons["AnswerQuestionsButton"]/*[[".buttons[\"Answer Questions Button\"]",".buttons[\"AnswerQuestionsButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(answerQuestionsButton.exists)
        
        // enter answers
        question1AnswerTextField.tap()
        question1AnswerTextField.typeText("one")
    
        question2AnswerTextField.tap()
        question2AnswerTextField.tap()
        question2AnswerTextField.typeText("two")
        
        question3AnswerTextField.tap()
        question3AnswerTextField.tap()
        question3AnswerTextField.typeText("three")
        
        question4AnswerTextField.tap()
        question4AnswerTextField.tap()
        question4AnswerTextField.typeText("four")
        
        question5AnswerTextField.tap()
        question5AnswerTextField.tap()
        question5AnswerTextField.typeText("five")
        
        question6AnswerTextField.tap()
        question6AnswerTextField.tap()
        question6AnswerTextField.typeText("six")
        
        answerQuestionsButton.tap()
        
        question1AnswerTextField.tap()
        question1AnswerTextField.tap()
        question1AnswerTextField.typeText("seven")
        
        question2AnswerTextField.tap()
        question2AnswerTextField.tap()
        question2AnswerTextField.typeText("eight")
        
        question3AnswerTextField.tap()
        question3AnswerTextField.tap()
        question3AnswerTextField.typeText("nine")
        
        question4AnswerTextField.tap()
        question4AnswerTextField.tap()
        question4AnswerTextField.typeText("ten")
        
        question5AnswerTextField.tap()
        question5AnswerTextField.tap()
        question5AnswerTextField.typeText("eleven")
        
        question6AnswerTextField.tap()
        question6AnswerTextField.tap()
        question6AnswerTextField.typeText("twelve")
        
        answerQuestionsButton.tap()
        
        let tellStoryButton = app/*@START_MENU_TOKEN@*/.buttons["TellStoryButton"]/*[[".buttons[\"Tell Story Button\"]",".buttons[\"TellStoryButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssert(tellStoryButton.exists)
        
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        tellStoryButton.tap()
        
    }
    
}
