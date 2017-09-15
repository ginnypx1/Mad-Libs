//
//  StoryModelTests.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/11/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import MadLibs

class StoryModelTests: XCTestCase {
    
    var sut: Story!
    
    override func setUp() {
        super.setUp()
        // init story
        sut = Story()
    }
    
    override func tearDown() {
        // deinit story
        sut = nil
        super.tearDown()
    }
    
    // MARK: - Test Properties
    
    func test_Story_HasQuestions() {
        let questions = sut.questions
        XCTAssertNotNil(questions)
    }
    
    func test_Story_HasAnswers() {
        let answers = sut.answers
        XCTAssertNotNil(answers)
    }
    
    func test_Story_HasStory() {
        let story = sut.story
        XCTAssertNotNil(story)
    }
    
    func test_Story_HasTimesViewed() {
        let timesViewed = sut.timesViewed
        XCTAssertNotNil(timesViewed)
    }
    
    // MARK: - Test Initialization
    
    func test_Story_QuestionsAreCorrect() {
        let questions = sut.questions
        let expectedQuestions = [
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
        XCTAssertEqual(questions, expectedQuestions)
    }
    
    func test_Answers_AreInitiallyEmpty() {
        let answers = sut.answers
        XCTAssertEqual(answers, [])
    }
    
    func test_Story_IsInitiallyEmpty() {
        let story = sut.story
        XCTAssertEqual(story, [])
    }
    
    func test_TimesViewed_IsInitiallyZero() {
        let timesViewed = sut.timesViewed
        XCTAssertEqual(timesViewed, 0)
    }
    
    // MARK: - Test story generation
    
    func test_GenerateStory_TellsStory() {
        let answers = ["word1", "word2", "word3", "word4", "word5", "word6", "word7", "word8", "word9", "word10", "word11", "word12"]
        sut.answers = answers
        sut.generateStory()
        let story = sut.story
        XCTAssertNotEqual(story, [])
        let title = sut.story[0]
        let expectedTitle = "WORD1 AND THE THREE WORD2S"
        XCTAssertEqual(title, expectedTitle)
    }
    
}
