//
//  LoginScreenVC.swift
//  Baller
//
//  Created by Kadir Emre on 12.07.2021.
//

import UIKit
import TransitionButton

class LoginScreenVC: UIViewController {
    
    @IBOutlet var signInButton:      TransitionButton!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var usernameImageView: UIImageView!
    @IBOutlet var passwordImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFieldBackground(imageViewName: usernameImageView)
        configureTextFieldBackground(imageViewName: passwordImageView)
        placeholderColor(textfieldName: usernameTextField, defaultPlaceholder: "Username")
        placeholderColor(textfieldName: passwordTextField, defaultPlaceholder: "Password")
        
    }
    
    func configureTextFieldBackground(imageViewName: UIImageView){
    
        imageViewName.layer.cornerRadius = 15
        imageViewName.layer.borderWidth = 3
    
        imageViewName.backgroundColor = UIColor(#colorLiteral(red: 0.9564905763, green: 0.936865747, blue: 0.8072264194, alpha: 0.8001280526))
        imageViewName.layer.borderColor = CGColor(#colorLiteral(red: 0.8251280785, green: 0.8719809651, blue: 0.7639333606, alpha: 1))
    }
    
    func placeholderColor(textfieldName: UITextField, defaultPlaceholder: String) {
        textfieldName.attributedPlaceholder = NSAttributedString(string: textfieldName.placeholder ?? "\(defaultPlaceholder)", attributes: [NSAttributedString.Key.foregroundColor : UIColor.black])
    }
    
        
    
    @IBAction func signInButtonTapped(_ sender: TransitionButton) {
        signInButton.startAnimation()
        signInButton.stopAnimation(animationStyle: .expand, revertAfterDelay: 1.0) {
            self.navigationController?.popViewController(animated: true)
            self.performSegue(withIdentifier: K.Segues.toMain, sender: nil)
        }
    }
    
}
