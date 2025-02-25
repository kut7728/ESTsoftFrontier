//
//  ViewController.swift
//  Lct0225Ex01_HelloWorld
//
//  Created by nelime on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblHello: UILabel!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblHello.text = "안녕하세요!"
    }

    @IBAction func changeGreeting(_ sender: UIButton) {
        print("soem")
        if btnSend == sender {
            print("it is send")
            guard let name = txtName.text else {
                print("이름을 입력하세요")
                return
            }
            print(name)
            lblHello.text = name
        } else {
            print("it is Reset")
            lblHello.text = "안녕하세요!"
            txtName.text = ""
        }
    }
    
}

