//
//  ViewController.swift
//  countdownTimer2
//
//  Created by Vedant Mistry on 23/10/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var countdownTimerStatus: UILabel!
    @IBOutlet var countdownTimerDisplay: UILabel!
    @IBOutlet var firstCountdownButton: UIButton!
    @IBOutlet var secondCountdownButton: UIButton!
    @IBOutlet var resetCountdownButton: UIButton!
    
    var timer = Timer()
    var timeRemaining = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstCountdownButton.layer.cornerRadius = firstCountdownButton.frame.height / 2
        secondCountdownButton.layer.cornerRadius = secondCountdownButton.frame.height / 2
        resetCountdownButton.layer.cornerRadius = resetCountdownButton.frame.height / 2
    }
    
    @IBAction func firstCountdownButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        timeRemaining = 25 * 60 //25 minutes
        countdownTimerDisplay.text = timeFormatter(timeRemaining)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountdownTimer), userInfo: nil, repeats: true)
    }
    @IBAction func secondCountdownButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        countdownTimerDisplay.text = secondCountdownButton.currentTitle
        timeRemaining = 5 * 60 //5 minutes
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountdownTimer), userInfo: nil, repeats: true)
    }
    @IBAction func resetCountdownButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        countdownTimerDisplay.text = "START TIMER!"
    }
    
    
    @objc func updateCountdownTimer(){
        if timeRemaining != 0{
            timeRemaining -= 1
            countdownTimerStatus.text = "TIMER IN PROGRESS"
        }
        else{
            timer.invalidate()
            countdownTimerStatus.text = "--------"
        }
    }
    
    func timeFormatter(_ totalSeconds: Int) -> String{
        let seconds: Int = totalSeconds / 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
}

