//
//  AnimationManager.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 9/19/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

struct AnimationManager {
    
    // MARK: - Question Animation
    
    static func positionLabelsOffscreen(_ labels: [UILabel]) {
        for label in labels {
            label.center.x -= 1000
        }
    }
    
    static func zoomQuestionsInFromLeft(_ labels: [UILabel]) {
        var delay: TimeInterval = 0
        for label in labels {
            UIView.animate(withDuration: 1.5, delay: delay, animations: {
                label.center.x += 1000
                delay += 0.25
            })
        }
    }
    
    // MARK: - Story Animation
    
    static func positionStoryTextOffscreen(_ label: UILabel) {
        label.center.x += 1000
    }
    
    static func zoomStoryInFromRight(_ label: UILabel) {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: 0.4, options: .curveLinear, animations: {
            label.center.x -= 1000
        })
    }
    
}
