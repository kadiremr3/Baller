//
//  LoginScreenVC.swift
//  Baller
//
//  Created by Kadir Emre on 12.07.2021.
//

import UIKit
import TransitionButton

class LoginScreenVC: UIViewController {
    @IBOutlet var signInButton: TransitionButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        

        
    }
    
    @IBAction func signInButtonTapped(_ sender: TransitionButton) {
        signInButton.startAnimation()
        //WITH COMPLETION HANDLER signInButton.stopAnimation()
    }
    
}
