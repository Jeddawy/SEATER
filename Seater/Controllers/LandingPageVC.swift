//
//  ViewController.swift
//  Seater
//
//  Created by Ibrahim El-geddawy on 11/23/18.
//  Copyright © 2018 Ibrahim El-geddawy. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LandingPageVC: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        faceBookConfigure()
    }
    func faceBookConfigure(){
        let loginButton = FBSDKLoginButton()
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 25, y: 390 , width: 325 , height: 55)
        loginButton.delegate = self
        loginButton.readPermissions = ["public_profile", "email"]
    }
    
}

extension LandingPageVC : FBSDKLoginButtonDelegate {
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        print("Did log in")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("did logout")
    }
    
}
