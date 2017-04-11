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
    
    func test_GenerateStory_TellsStory() {
        let answers = ["word", "wod", "word3", "word4", "word5", "word6", "word7", "word8", "word9", "word10", "word11", "word 12"]
        sut.answers = answers
        sut.generateStory()
        let story = sut.story
        XCTAssertNotEqual(story, [])
        let title = sut.story[0]
        let expectedTitle = "WORD AND THE THREE WODS"
        XCTAssertEqual(title, expectedTitle)
    }
    
}
