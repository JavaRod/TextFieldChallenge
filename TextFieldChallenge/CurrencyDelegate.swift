//
//  CurrencyDelegate.swift
//  TextFieldChallenge
//
//  Created by Rodrick Musser on 1/26/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import Foundation
import UIKit


class CurrencyDelegate: NSObject, UITextFieldDelegate {

    var numbers = [Int]()
    
    func textFieldDidBeginEditing(textField: UITextField) {
        if (textField.text == nil || textField.text?.characters.count == 0){
            textField.text = "$0.00"
        }
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
       
        //TODO Handle backspace character
        print("String: \(string)")
        if (string.characters.count > 0) {
          numbers.append(Int(string)!)
        }
        
        
        if (!numbers.isEmpty){
            var textFieldValue : String = "$"
            
            if (numbers.count <= 1){
                textFieldValue = "$0.0"
            }
            else if (numbers.count <= 2){
                textFieldValue = "$0"
            }
            
            print("Numbers Count: \(numbers.count)")
            print("Numbers: \(numbers[0])")
            var lastIndex = numbers.count - 1;
             print("Last Index: \(lastIndex)")
            
            for number in numbers {
                if (lastIndex == 1){
                    textFieldValue += "."
                }
                print("Last Index: \(lastIndex)")

                textFieldValue += "\(number)"
                lastIndex--
                
                
            }
            
            textField.text = textFieldValue
        }
        
        
        
        
        return false;
    }
}