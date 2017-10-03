//
//  AccessibilityManager.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 10/3/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

struct AccessibilityManager {
    
    // MARK - Apply Dynamic Text to Button
    
    static func applyDynamicText(to button: UIButton) {
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
    }
}

