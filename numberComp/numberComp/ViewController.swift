//
//  ViewController.swift
//  numberComp
//
//  Created by Vedant Mistry on 18/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var leftImageView: UIImageView!
    @IBOutlet var rightImageView: UIImageView!

    var leftAvengerNumber = 1
    var rightAvengerNumber = 1
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let avengerArray = [#imageLiteral(resourceName: "ironman"), #imageLiteral(resourceName: "thor"), #imageLiteral(resourceName: "hulk"), #imageLiteral(resourceName: "doctorstrange"), #imageLiteral(resourceName: "spiderman"), #imageLiteral(resourceName: "captainamerica"), #imageLiteral(resourceName: "daredevil"), #imageLiteral(resourceName: "ghostrider"), #imageLiteral(resourceName: "adamwarlock"), #imageLiteral(resourceName: "thanos"), #imageLiteral(resourceName: "punisher"), #imageLiteral(resourceName: "vision"), #imageLiteral(resourceName: "redhulk")]
        
        leftImageView.image = avengerArray[Int.random(in: 0..<avengerArray.count)]
        rightImageView.image = avengerArray[Int.random(in: 0..<avengerArray.count)]
        
        leftAvengerNumber += 1
        rightAvengerNumber += 1
    }
    
}


