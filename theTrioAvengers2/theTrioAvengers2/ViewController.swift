//
//  ViewController.swift
//  theTrioAvengers2
//
//  Created by Vedant Mistry on 21/10/21.
//

import UIKit
import AVFoundation //import the AVFoundation library to be able to import audio.

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav") //giving the value of the song file
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
        
    }


}

