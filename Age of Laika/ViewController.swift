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
        var dogYearsInDouble:Double = 0.0
        let conversionConstant = 7
        let humanYearsFromTextField = Double ((humanYearsLabel.text as NSString).doubleValue)
        let humanYearsInString  = humanYearsLabel.text
        let humanYearsInInt = humanYearsInString.toInt()
        
        if humanYearsInInt <= 2{
            dogYearsInDouble = humanYearsFromTextField * 10.5
        }
        else
        {
        dogYearsInDouble = 21 + ((humanYearsFromTextField-2) * 4)
        }
        
        
        dogYearsLabel.text = "\(dogYearsInDouble)" + " Dog Years"
        
        
    }

}

