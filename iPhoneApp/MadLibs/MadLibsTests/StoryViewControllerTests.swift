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
        _ = sut.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Test Outlets exist
    
    // TODO: Test with property injection
    
    /*
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
    */
}
