//
//  ViewController.swift
//  Age of Laika
//
//  Created by David Kuchta on 9/27/14.
//  Copyright (c) 2014 David Kuchta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsLabel: UITextField!
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertButtonLabel(sender: UIButton) {
        
        let conversionConstant = 7
        let humanYearsInString  = humanYearsLabel.text
        let humanYearsInInt = humanYearsInString.toInt()
        let dogYearsInInt = humanYearsInInt! * 7
        
        dogYearsLabel.text = "\(dogYearsInInt)" + " Dog Years"
        
        
    }

}

