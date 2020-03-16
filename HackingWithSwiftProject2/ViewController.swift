//
//  ViewController.swift
//  HackingWithSwiftProject2
//
//  Created by Chen, Sihan on 2020-03-15.
//  Copyright © 2020 Chen, Sihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Initial Values
        var countries = [String]()
        var score = 0
        countries += ["estonia", "france", "germany", "ireland",
        "italy", "monaco", "nigeria", "poland", "russia", "spain",
        "uk", "us"]
        
        //
        
        func askQuestion() {
           button1.setImage(UIImage(named: countries[0]), for: .normal)
           button2.setImage(UIImage(named: countries[1]), for: .normal)
           button3.setImage(UIImage(named: countries[2]), for: .normal)
        }
        askQuestion()
        
    }
    
    
    

}
