//
//  ViewController.swift
//  theTrioAvengers
//
//  Created by Vedant Mistry on 21/10/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        UIView.animate(withDuration: 1.0){
            sender.layer.cornerRadius = 40
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
            sender.layer.cornerRadius = 0
        }
    }
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}

