//
//  ViewController.swift
//  UnitTestDemo
//
//  Created by kanakaraju on 23/05/19.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var navigationTitel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var navigationBar: UIView!
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginAction() {
        guard let username = userNameTextField.text ,let password = passwordTextField.text else {
            return
        }

        if username.isEmpty {
            errorLabel.isHidden = false
            errorLabel.text = "Please enter a username or password"
            return
        }
        
        if password.isEmpty {
            errorLabel.isHidden = false
            errorLabel.text = "Please enter password"
            return
        }
        if username == "kanak" && password == "1234" {
            print("login success")
        }

    }
    
}

