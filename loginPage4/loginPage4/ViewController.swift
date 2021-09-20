//
//  ViewController.swift
//  loginPage4
//
//  Created by Vedant Mistry on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var profilePhoto: UIImageView!
    @IBOutlet var usernameTextfield: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var twitterButton: UIButton!
    @IBOutlet var facebookButton: UIButton!
    @IBOutlet var googleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.width/2
        loginButton.layer.cornerRadius = 20
        twitterButton.layer.cornerRadius = 20
        facebookButton.layer.cornerRadius = 20
        googleButton.layer.cornerRadius = 20
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        
        if sender == twitterButton{
            segue.destination.navigationItem.title = "Login with Twitter"
        }
        else if sender == facebookButton{
            segue.destination.navigationItem.title = "Login with Facebook"
        }
        else if sender == googleButton{
            segue.destination.navigationItem.title = "Login with Google"
        }
        else{
            segue.destination.navigationItem.title = usernameTextfield.text
        }
    }
    
    
    @IBAction func twitterButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "multipleAccountPages", sender: sender)
    }
    @IBAction func facebookButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "multipleAccountPages", sender: sender)
    }
    @IBAction func googleButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "multipleAccountPages", sender: sender)
    }
}

