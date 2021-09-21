//
//  StarViewController.swift
//  AppIdea2
//
//  Created by Vedant Mistry on 21/09/21.
//

import UIKit

class StarViewController: UIViewController {

    @IBOutlet var profilePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        profilePhoto.layer.cornerRadius = profilePhoto.bounds.width/2
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
