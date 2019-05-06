//
//  ViewController.swift
//  Say
//
//  Created by Malcolm Ivy on 4/9/19.
//  Copyright © 2019 Malcolm Ivy. All rights reserved.
//

import UIKit
struct Word {
    let english: String
    let french: String
}

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var isSegueAllowed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        switch identifier {
        case "greenView":
            print("going to the green view")
            
            if isSegueAllowed{
                return true
            } else{
                return false
            }
        
        default:
            print ("going to some ther view" )
            return true
            
        }
    }
    @IBAction func tog(_ sender: Any) {
        
        isSegueAllowed = !isSegueAllowed
    }
    

}

