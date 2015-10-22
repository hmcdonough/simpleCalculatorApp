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
    var currentLabel = ""
    var newValue = 0.0
    var currentOperation = ""
    
    @IBOutlet weak var label: UILabel!
    
    //2-3-4-+-1-2 234 + 12 = 246
    
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
            updateLabel()
        }
        currentOperation = sender.currentTitle!
    }
    
    @IBAction func equals(sender: UIButton) {
        if (currentOperation != "") {
            updateLabel()
        }
    }
 
    //takes currentTotal [currentOperation] newValue
    func updateLabel() {
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
        default:
           label.text! = String(currentTotal)
        }
        currentOperation = ""
        newValue = 0.0
        currentTotal = Double(label.text!)!
    }
    
//    let calc = "fixme"
//    if calc == "fact" {
//        print("Result: " + String(factorial(convert(numbers[0]))))
//    } else if numbers.count == 1 {
//        let firstNum = convert(numbers[0])
//        let secondNum = convert(input())
//        print("Result: ")
//        switch calc {
//        case "+":
//            print(firstNum + secondNum)
//        case "-":
//            print(firstNum - secondNum)
//        case "*":
//            print(firstNum * secondNum)
//        case "/":
//            print(firstNum / secondNum)
//        case "%":
//            print(firstNum % secondNum)
//        default:
//            print("Unrecognized calculator command passed")
//        }
//    } else {
//        print("Result: ")
//        switch calc {
//        case "count":
//            print(numbers.count)
//        case "avg":
//            var total = 0.0;
//            for i in 0...(numbers.count - 1) {
//                total += convert(numbers[i])
//            }
//            print(total / Double(numbers.count))
//        default:
//            print("Unrecognized calculator command passed")
//        }
//    }
}

