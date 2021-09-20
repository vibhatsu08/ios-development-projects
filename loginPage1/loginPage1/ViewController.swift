//
//  ViewController.swift
//  loginPage1
//
//  Created by Vedant Mistry on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet var usernameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 10.0
        facebookButton.layer.cornerRadius = 10.0
        twitterButton.layer.cornerRadius = 10.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        
        if sender == facebookButton{
            segue.destination.navigationItem.title = "Login with Facebook"
        }
        else if sender == twitterButton{
            segue.destination.navigationItem.title = "Login with Twitter"
        }
        else{
            segue.destination.navigationItem.title = usernameTextField.text
        }
    }
    
    @IBAction func loginWithFacebookAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginWithFacebookOrTwitter", sender: sender)
    }
    @IBAction func loginWithTwitterAction(_ sender: UIButton) {
        performSegue(withIdentifier: "loginWithFacebookOrTwitter", sender: sender)
    }
    
}

