//
//  FormTextFieldDelegate.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 9/15/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class FormTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
