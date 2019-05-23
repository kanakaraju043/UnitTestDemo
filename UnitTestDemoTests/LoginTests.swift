//
//  LoginTests.swift
//  UnitTestDemoTests
//
//  Created by kanakaraju on 23/05/19.
//  Copyright © 2019 Administrator. All rights reserved.
//

import UIKit

import XCTest

@testable import UnitTestDemo

class LoginTests: XCTestCase {
    
    func getLoginViewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let login = storyboard.instantiateInitialViewController() as? ViewController else{
            return ViewController()
        }
        return login
    }
    
    func testLoginScreenTitleIsLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let login = storyboard.instantiateInitialViewController() as? ViewController else{
            return
        }
        let _ = login.view
        if let navigationTitle = login.navigationTitel {
            XCTAssertEqual("Login", navigationTitle.text ?? "")
        }else{
            XCTFail()
        }
    }
    
    
    func testLoginScreenUserNamePlaceHolder() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let login = storyboard.instantiateInitialViewController() as? ViewController else{
            return
        }
        let _ = login.view
        if let username = login.userNameTextField {
            XCTAssertEqual("user name", username.placeholder ?? "")
        }else{
            XCTFail()
        }
    }
    
    func testLoginScreenPasswordPlaceHolder() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let login = storyboard.instantiateInitialViewController() as? ViewController else{
            return
        }
        let _ = login.view
        if let password = login.passwordTextField {
            XCTAssertEqual("password", password.placeholder ?? "")
        }else{
            XCTFail()
        }
    }
    
    func testLoginScreenButtonTitleIsLogin() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let login = storyboard.instantiateInitialViewController() as? ViewController else{
            return
        }
        let _ = login.view
        XCTAssertEqual("Login", login.loginButton.titleLabel?.text ?? "")

    }
    
    func test_title_is_login() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("Login", login.navigationTitel!.text!)
    }
    
    func test_username_placeholder() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let login = storyboard.instantiateInitialViewController() as! ViewController
        let _ = login.view
        XCTAssertEqual("user name", login.userNameTextField!.placeholder!)
    }
    
    func test_login_without_username() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        let _ = vc.view
        
        vc.userNameTextField!.text = ""
        vc.loginAction()
        XCTAssertFalse(vc.errorLabel!.isHidden)
        XCTAssertEqual("Please enter a username or password", vc.errorLabel!.text!)
    }
    
    func test_login_with_username_but_no_password() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! ViewController
        let _ = vc.view
        
        vc.userNameTextField!.text = "josh"
        vc.passwordTextField!.text = ""
        vc.loginAction()
        XCTAssertFalse(vc.errorLabel!.isHidden)
        XCTAssertEqual("Please enter password", vc.errorLabel!.text!)
    }
}
