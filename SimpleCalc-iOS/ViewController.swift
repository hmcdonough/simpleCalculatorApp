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
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func addNumToLabel(sender: UIButton) {
        print(sender.currentTitle!)
    }
    
    @IBAction func addOperationToLabel(sender: UIButton) {
        print(sender.currentTitle!)
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

