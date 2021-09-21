//
//  ViewController.swift
//  buttonTapped
//
//  Created by Vedant Mistry on 21/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var buttonCounterDisplay: UILabel!
    @IBOutlet var resetButton: UIButton!
    private var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonCounterDisplay.text = "\(score)"
        button.layer.cornerRadius = 20
        
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        score += 1
        buttonCounterDisplay.text = "\(score)"
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
        score = 0
        buttonCounterDisplay.text = "0"
    }
    
    

}

