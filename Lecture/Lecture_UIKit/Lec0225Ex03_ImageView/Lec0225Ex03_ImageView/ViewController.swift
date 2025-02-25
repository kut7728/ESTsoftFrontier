//
//  ViewController.swift
//  Lec0225Ex03_ImageView
//
//  Created by nelime on 2/25/25.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnZoom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "lamp_on")
        imgOff = #imageLiteral(resourceName: "lamp_off")
        
        imgView.image = imgOn
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        imgView.image = sender.isOn ? imgOn : imgOff
    }
}

