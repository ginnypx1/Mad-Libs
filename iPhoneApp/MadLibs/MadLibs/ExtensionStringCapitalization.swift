//
//  ExtensionStringCapitalization.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 9/25/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
