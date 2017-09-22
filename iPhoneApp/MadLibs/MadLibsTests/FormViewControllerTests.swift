//
//  FormViewControllerTests.swift
//  MadLibsTests
//
//  Created by Ginny Pennekamp on 9/22/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import MadLibs

class FormViewControllerTests: XCTestCase {
    
    var sut: FormViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard
            .instantiateViewController(
                withIdentifier: "questionView")
            as! FormViewController
        _ = sut.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Test Outlets exist
    
    func test_HasQuestionLabels() {
        XCTAssertNotNil(sut.questionLabels)
    }
    
    func test_HasSixQuestionLabels() {
        let countQuestionLabels = sut.questionLabels.count
        XCTAssertEqual(countQuestionLabels, 6)
    }
    
    func test_HasQuestionTextFields() {
        XCTAssertNotNil(sut.questionTextFields)
    }
    
    func test_HasSixTextFields() {
        let textFieldCount = sut.questionTextFields.count
        XCTAssertEqual(textFieldCount, 6)
    }
    
    func test_HasKeepGoingButton() {
        XCTAssertNotNil(sut.keepGoingButton)
    }
    
    // MARK: - Test Properties
    
    func test_Story_Exists() {
        XCTAssertNotNil(sut.story)
    }
    
    func test_LabelCount_Exists() {
        XCTAssertNotNil(sut.labelCount)
    }
    
    func test_LabelCount_IsInitiallySix() {
        XCTAssertEqual(sut.labelCount, 6)
    }
    
    func test_textFieldDelegate_Exists() {
        XCTAssertNotNil(sut.textFieldDelegate)
    }
    
    // MARK: - Test Methods
    
    func test_askQuestions_PopulatesLabels() {
        let labelText = sut.questionLabels[1].text
        let expectedText = "What's your favorite animal?"
        XCTAssertEqual(labelText, expectedText)
    }
    
    func test_recordAnswers_RecordsAnswers() {
        sut.questionTextFields[0].text = "Ginny"
        sut.recordAnswers()
        let story = sut.story
        let nameAnswer = story?.answers[0]
        XCTAssertEqual(nameAnswer, "Ginny")
    }
    
    func test_tellStory_recordsAnswers() {
        sut.questionTextFields[0].text = "Ginny"
        sut.tellStory(sut.keepGoingButton)
        let story = sut.story
        let nameAnswer = story?.answers[0]
        XCTAssertEqual(nameAnswer, "Ginny")
    }
    
    func test_tellStory_increasesTimesViewed() {
        let story = sut.story
        let initialViews = story?.timesViewed
        sut.tellStory(sut.keepGoingButton)
        let afterViews = story?.timesViewed
        XCTAssertNotEqual(initialViews, afterViews)
        XCTAssertEqual(afterViews, 1)
    }
    
    func test_tellStory_asksNewQuestions() {
        sut.tellStory(sut.keepGoingButton)
        let labelText = sut.questionLabels[0].text
        let expectedText = "Name a thing:"
        XCTAssertEqual(labelText, expectedText)
    }
    
    func test_tellStory_ChangesButtonText() {
        let initialText = sut.keepGoingButton.title(for: .normal)
        let expectedText = "Tell Me A Story"
        sut.tellStory(sut.keepGoingButton)
        let afterText = sut.keepGoingButton.title(for: .normal)
        XCTAssertNotEqual(initialText, expectedText)
        XCTAssertEqual(afterText, expectedText)
    }
    
    // TODO: test that presentStory() segues to storyView
    // TODO: test textFieldDelegate sets properly
    // TODO: test keyboard notifications
    
    
}
