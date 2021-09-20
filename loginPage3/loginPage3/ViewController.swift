//
//  ViewController.swift
//  loginPage3
//
//  Created by Vedant Mistry on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profilePicture.layer.cornerRadius = profilePicture.bounds.width/2
        loginButton.layer.cornerRadius = 20
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        
        if sender == signupButton{
            segue.destination.navigationItem.title = "Sign up"
        }
        else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    
    @IBAction func signupAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginOrSignUp", sender: sender)
    }
    
}

