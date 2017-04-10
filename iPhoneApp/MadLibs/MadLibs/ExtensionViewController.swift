//
//  ExtensionViewController.swift
//  MadLibs
//
//  Created by Ginny Pennekamp on 4/10/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import Foundation
import UIKit

extension ViewController {
    // MARK: - Keyboard Notifications
    
    func getKeyboardHeight(_ notification: Notification) -> CGFloat {
        // gets the size of the user's keyboard
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue
        return keyboardSize.cgRectValue.height
    }
    
    func keyboardWillShow(_ notification: Notification) {
        // shifts the view up the height of the keyboard
        for textField in txtQuestionTextField {
            if textField.isFirstResponder {
                view.frame.origin.y = getKeyboardHeight(notification) * (-1)
            }
        }
    }
    
    func keyboardWillHide(_ notification: Notification) {
        // shifts the view down to the bottom when keyboard closes
        view.frame.origin.y = 0
    }
    
    func subscribeToKeyboardNotifications() {
        // subscribes to keyboard notifications
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)
    }
    
    func unsubscribeToKeyboardNotifications() {
        // unsubscribes to keyboard notifications
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
}
