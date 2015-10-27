//
//  ViewController.swift
//  SimpleCalc-iOS
//
//  Created by Harry McDonough on 10/21/15.
//  Copyright © 2015 Harrison McDonough. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text! = "0.0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func factorial(incoming:Double) -> Double {
        if incoming <= 1 {
            return 1;
        } else {
            return incoming * factorial(incoming - 1)
        }
    }
    
    var currentTotal = 0.0
    var newValue = 0.0
    var currentOperation = ""
    var count = 1.0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func addNumToLabel(sender: UIButton) {
        if (currentOperation == "") {
            currentTotal = currentTotal * 10 + Double(sender.currentTitle!)!
            self.label.text! = String(currentTotal)
        } else {
            newValue = newValue * 10 + Double(sender.currentTitle!)!
            label.text! = String(newValue)
        }
    }
    
    @IBAction func addOperationToLabel(sender: UIButton) {
        if (currentOperation != "") {
            updateLabel(false)
        }
        currentOperation = sender.currentTitle!
        count++
        if (currentOperation == "Fact") {
            label.text! = String(factorial(currentTotal))
            currentOperation = ""
            currentTotal = Double(label.text!)!
        }
    }
    
    @IBAction func equals(sender: UIButton) {
        if (currentOperation != "") {
            updateLabel(true)
        }
    }

    @IBAction func clearLabel(sender: UIButton) {
        currentOperation = ""
        count = 1.0
        currentTotal = 0.0
        newValue = 0.0
        label.text! = "0.0"
    }
 
    //takes currentTotal [currentOperation] newValue
    func updateLabel(isEquals: Bool) {
        switch currentOperation {
        case "+":
            label.text! = String(currentTotal + newValue)
        case "-":
            label.text! = String(currentTotal - newValue)
        case "*":
            label.text! = String(currentTotal * newValue)
        case "/":
            label.text! = String(currentTotal / newValue)
        case "%":
            label.text! = String(currentTotal % newValue)
        case "Count":
            label.text! = String(count)
        case "Avg":
            label.text! = String(currentTotal + newValue)
            if (isEquals) {
                label.text! = String((currentTotal + newValue) / count)
            }
        default:
           label.text! = String(currentTotal)
        }
        currentOperation = ""
        newValue = 0.0
        currentTotal = Double(label.text!)!
    }
}

