//
//  ViewController.swift
//  pomodoroTimer1
//
//  Created by Vedant Mistry on 22/10/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet var timerStatus: UILabel!
    @IBOutlet var timerCountdown: UILabel!
    @IBOutlet var firstButton: UIButton!
    @IBOutlet var secondButton: UIButton!
    @IBOutlet var resetButton: UIButton!
    
    var timer = Timer()
    var timeLeft = 0
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timerStatus.text = "--------"
        timerCountdown.text = "Start timer!"
        firstButton.layer.cornerRadius = firstButton.frame.height / 2
        secondButton.layer.cornerRadius = secondButton.frame.height / 2
        resetButton.layer.cornerRadius = resetButton.frame.height / 2
    }
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        timerCountdown.text = sender.currentTitle
        timeLeft = 10
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        timerCountdown.text = sender.currentTitle
        timeLeft = 5
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        timer.invalidate()
        timerCountdown.text = "Start timer!"
    }
    
    
    @objc func updateTimer(){
        if timeLeft > 0{
            timerStatus.text = "Timer in progress!"
            timeLeft -= 1
            timerCountdown.text = "\(timeLeft)"
        }
        else{
            timer.invalidate()
            timerStatus.text = "--------"
            let url = Bundle.main.url(forResource: "alarm", withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
    
}

