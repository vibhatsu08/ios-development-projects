//
//  ViewController.swift
//  appTimer
//
//  Created by Vedant Mistry on 22/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countdownLabel: UILabel!
    @IBOutlet var countdownTimerStatusLabel: UILabel!
    
    var timer =  Timer() //create a variable for the timer with an optional value.
    var timeLeft = 0 //the time for the timer
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        countdownLabel.text = sender.currentTitle
        timeLeft = 60
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        countdownLabel.text = sender.currentTitle
        timeLeft = 120
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(update), userInfo: nil, repeats: true)
    }
    
    
    @objc func update(){
        
        if timeLeft >= 0{
            countdownLabel.text = "\(timeLeft)"
            countdownTimerStatusLabel.text = "Timer in progress!"
            timeLeft -= 1
            
            if timeLeft == 0{
                countdownTimerStatusLabel.text = "Done!"
            }
        }
    }


}

