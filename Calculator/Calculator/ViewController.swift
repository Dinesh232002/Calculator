//
//  ViewController.swift
//  Calculator
//
//  Created by Greens-Apple2 on 07/08/21.
//  Copyright © 2021 Greens-Apple2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false
    var operation = 0;
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var Label: UILabel!
    @IBAction func Numbers(_ sender: UIButton)
    {
        if performingMath == true
        {
            Label.text = String(sender.tag-1)
            numberOnScreen = Double(Label.text!)!
            performingMath = false
        }
        else
        {
            Label.text = Label.text! + String(sender.tag-1)
            numberOnScreen = Double(Label.text!)!
        }
        
    }
    @IBAction func Buttons(_ sender: UIButton)
    {
        if Label.text != "" && sender.tag != 16 && sender.tag != 12
        {
            previousNumber = Double(Label.text!)!
            if sender.tag == 11
            {
                Label.text = "/";
            }
            else if sender.tag == 13
            {
                Label.text = "+";
            }
            else if sender.tag == 14
            {
                Label.text = "-";
            }
            else if sender.tag == 15
            {
                Label.text = "*";
            }
            
            
            operation = sender.tag
            performingMath = true;
        }
        else if sender.tag == 12
        {
            if operation == 11
            {
                Label.text = String(previousNumber / numberOnScreen)
            }
            else if operation == 15
            {
                Label.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                Label.text = String(previousNumber - numberOnScreen)
            }
            else if operation == 13
            {
                Label.text = String(previousNumber + numberOnScreen)
            }
       }
       else if sender.tag == 16
       {
            Label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

