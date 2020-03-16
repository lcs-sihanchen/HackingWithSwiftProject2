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
    var score = 0
    var correctAnswer = 0
    var countries = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Initial Values
        
        countries += ["estonia", "france", "germany", "ireland",
                      "italy", "monaco", "nigeria", "poland", "russia", "spain",
                      "uk", "us"]
        
        // Give borders to the flags to prevent the confusion of white stripes
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        // Change border color to lightgrey(notice the change from UIColor to CgColor)
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        // Function for asking questions
        
        func askQuestion(action: UIAlertAction! = nil) {
            countries.shuffle()
            // load the image
            button1.setImage(UIImage(named: countries[0]), for: .normal)
            button2.setImage(UIImage(named: countries[1]), for: .normal)
            button3.setImage(UIImage(named: countries[2]), for: .normal)
            
            correctAnswer = Int.random(in: 0...2)
            // Uppercase
            title = countries[correctAnswer].uppercased()
            
            
            let ac = UIAlertController(title: title, message: "Your score is \(score)" , preferredStyle: .alert)
            present(ac, animated: true)
        }
        
        // When it's not specified, parameter has a value of nil
        askQuestion()
        
    }
 
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Correction
        var title: String
        if sender.tag == correctAnswer {
           title = "Correct"
           score += 1
        } else {
           title = "Wrong"
           score -= 1
        }
        
        
     
    }
    
    
    
    
}
