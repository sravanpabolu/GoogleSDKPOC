//
//  ViewController.swift
//  GoogleSDKPOC
//
//  Created by Sravan on 10/02/17.
//  Copyright © 2017 Sravan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var btnSignInWithGoogle: GIDSignInButton!
    @IBOutlet weak var btnSignOutWithGoogle: GIDSignInButton!
    
    @IBOutlet weak var signInButton: GIDSignInButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        
        
        
        
    }

    @IBAction func didTapSignIn(sender: AnyObject) {
        GIDSignIn.sharedInstance().signIn()
    }
    
    
    @IBAction func didTapSignOut(sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

