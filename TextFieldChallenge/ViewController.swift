//
//  ViewController.swift
//  TextFieldChallenge
//
//  Created by Rodrick Musser on 1/23/16.
//  Copyright © 2016 RodCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var currencyTextField: UITextField!
    @IBOutlet weak var editText: UITextField!
    @IBOutlet weak var editSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let currencyDelegate = CurrencyDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zipCodeTextField.delegate = zipCodeDelegate
        self.currencyTextField.delegate = currencyDelegate
        self.editText.delegate = self
        
        
        
    }
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if (editSwitch.on) {
            return true
        } else {
            return false
        }
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

