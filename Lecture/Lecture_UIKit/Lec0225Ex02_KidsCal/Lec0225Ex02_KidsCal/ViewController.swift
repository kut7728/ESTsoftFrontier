//
//  ViewController.swift
//  Lec0225Ex02_KidsCal
//
//  Created by nelime on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtNum1: UITextField!
    @IBOutlet weak var txtNum2: UITextField!
    @IBOutlet weak var txtOper: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnResult(_ sender: UIButton) {
        var num1: Int = Int(txtNum1.text!)!
        var num2: Int = Int(txtNum2.text!)!
        var oper: String = txtOper.text!
        
        var result:Int = 0;
        if oper == "+" {
            result = num1 + num2
        } else if oper == "-" {
            if num1 < num2 {
                var temp = num1
                num1 = num2
                num2 = temp
            }
            result = num1 - num2
        } else if oper == "*" {
            result = num1 * num2
        } else if oper == "/" {
            result = num1 / num2
        } else {
            lblResult.text = "결과: 연산 불가 (정의 안된 연산자!)"
        }
        
        print(num1, num2, oper)
        lblResult.text = "\(num1) \(oper) \(num2) = \(result)";
    }
}
