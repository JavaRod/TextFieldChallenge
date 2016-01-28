//
//  ZipCodeDelegate.swift
//  TextFieldChallenge
//
//  Created by Rodrick Musser on 1/26/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import Foundation
import UIKit


class ZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return true
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        print(string)
        print(string.characters.count)
        
        if (string.characters.count > 0 && textField.text?.characters.count == 5) {
            return false;
        }
        
        return true;
    }
    
}
