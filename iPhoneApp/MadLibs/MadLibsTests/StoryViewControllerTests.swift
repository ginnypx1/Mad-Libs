//
//  StoryViewControllerTests.swift
//  MadLibsTests
//
//  Created by Ginny Pennekamp on 9/25/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import MadLibs

class StoryViewControllerTests: XCTestCase {
    
    var sut: StoryViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard
            .instantiateViewController(
                withIdentifier: "storyView")
            as! StoryViewController
        
        sut.story = Story()
        sut.story.answers = ["one", "two", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"]
        
        _ = sut.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Test Outlets exist
    
    // TODO: Test with property injection
    
    func test_HasStoryTextLabel() {
        XCTAssertNotNil(sut.storyTextLabel)
    }
    
    func test_HasTellStoryButton() {
        XCTAssertNotNil(sut.tellStoryButton)
    }
    
    // MARK: - Test Properties Exist
    
    func test_hasStory() {
        XCTAssertNotNil(sut.story)
    }
    
    func test_hasStoryPage() {
        XCTAssertNotNil(sut.storyPage)
    }
    
    func test_storyPage_IsInitiallyZero() {
        XCTAssertEqual(sut.storyPage, 0)
    }
    
    // MARK: - Test Initial Display
    
    func test_generateStory_GeneratesStory() {
        let storyTitle = sut.story.story[0]
        let expectedTitle = "ONE AND THE THREE TWOS"
        XCTAssertEqual(storyTitle, expectedTitle)
    }
    
    func test_displayStoryTitle_DisplaysStoryTitle() {
        let labelText = sut.storyTextLabel.text
        let expectedTitle = "ONE AND THE THREE TWOS"
        XCTAssertEqual(labelText, expectedTitle)
        let buttonText = sut.tellStoryButton.title(for: .normal)
        let expectedButtonText = "Tell My Story"
        XCTAssertEqual(buttonText, expectedButtonText)
    }
    
    // MARK: - Test Storytelling
    
    func test_tellStory_turnsPage() {
        let initialPageNumber = sut.storyPage
        XCTAssertEqual(initialPageNumber, 0)
        sut.tellStory(sut.tellStoryButton)
        let pageNumber = sut.storyPage
        XCTAssertEqual(pageNumber, 1)
    }
    
    func test_tellStory_displaysPageTurn() {
        sut.storyPage = 0
        sut.tellStory(sut.tellStoryButton)
        let labelText = sut.story.story[1]
        let expectedText = "  Once upon a time, One went for a walk in the 3.  Pretty soon, One came upon a house.  One knocked, and when no one answered, One walked right in."
        XCTAssertEqual(labelText, expectedText)
        let buttonText = sut.tellStoryButton.title(for: .normal)
        let expectedButtonText = "Tell Me More"
        XCTAssertEqual(buttonText, expectedButtonText)
    }
    
    func test_tellStory_DisplaysEnd() {
        sut.storyPage = sut.story.story.count - 2
        sut.tellStory(sut.tellStoryButton)
        let labelText = sut.storyTextLabel.text
        let expectedText = "THE END"
        XCTAssertEqual(labelText, expectedText)
        let buttonText = sut.tellStoryButton.title(for: .normal)
        let expectedButtonText = "Play Again"
        XCTAssertEqual(buttonText, expectedButtonText)
    }
    
    func test_tellStory_ResetsStory() {
        sut.storyPage = sut.story.story.count - 1
        sut.tellStory(sut.tellStoryButton)
        XCTAssertEqual(sut.storyPage, 0)
        XCTAssertEqual(sut.story.timesViewed, 0)
        XCTAssertEqual(sut.story.answers.count, 0)
        XCTAssertEqual(sut.story.story.count, 0)
    }
}
