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
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        configureTextField(textFieldName: usernameTextField)
//        configureTextField(textFieldName: passwordTextField)
 
    }
    
//    func configureTextField(textFieldName: UITextField){
//        textFieldName.layer.cornerRadius = 60
//        textFieldName.layer.borderWidth = 20
//        textFieldName.layer.borderColor = UIColor.systemBlue.cgColor
//    }
    
    @IBAction func signInButtonTapped(_ sender: TransitionButton) {
        signInButton.startAnimation()
        signInButton.stopAnimation(animationStyle: .expand, revertAfterDelay: 1.0) {
            self.navigationController?.popViewController(animated: true)
            self.performSegue(withIdentifier: K.Segues.toMain, sender: nil)
        }
    }
    
}
