//
//  ViewController.swift
//  loginPage2
//
//  Created by Vedant Mistry on 20/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signupButton: UIButton!
    @IBOutlet var profilePicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 20
        signupButton.layer.cornerRadius = 20
        profilePicture.layer.cornerRadius = profilePicture.bounds.width/2
    }


}

