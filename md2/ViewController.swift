//
//  ViewController.swift
//  md2
//
//  Created by viva brolite on 14/06/2020.
//  Copyright © 2020 vivabrolite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var circle: UIImageView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var colorLabel: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        circle.tintColor = .gray
    }
    
    
    @IBAction func timeChanged(_ sender: UIDatePicker) {
        
        let unixTime = sender.date.timeIntervalSince1970

        let unixTimeInt:Int = Int(unixTime)
        let time = (unixTimeInt-10800)%420
        print(time)
        
        if time <= 60 {
            circle.tintColor = .green
            colorLabel.text = "U should GO!"
            colorLabel.textColor = .green
        }
        
        if time == 120{
            circle.tintColor = .yellow
            colorLabel.text = "U should WAIT!"
            colorLabel.textColor = .yellow
        }
        
        if time > 120 && time < 360{
            circle.tintColor = .red
            colorLabel.text = "U should STOP!"
            colorLabel.textColor = .red
        }
        
        if time == 360{
            circle.tintColor = .yellow
            colorLabel.text = "U should WAIT!"
            colorLabel.textColor = .green
        }
    }
    
    
}
