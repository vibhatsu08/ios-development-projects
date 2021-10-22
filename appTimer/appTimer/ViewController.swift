//
//  ViewController.swift
//  appTimer
//
//  Created by Vedant Mistry on 22/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countdownLabel: UILabel!
    
    var timer: Timer?
    var timeLeft = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    @objc func update(){
        timeLeft -= 1
        countdownLabel.text = "\(timeLeft)"
        
        if timeLeft <= 0{
            timer?.invalidate()
            timer = nil
        }
    }


}

