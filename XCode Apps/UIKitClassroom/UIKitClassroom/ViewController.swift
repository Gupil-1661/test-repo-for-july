//
//  ViewController.swift
//  UIKitClassroom
//
//  Created by Gupil  on 15/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wifiToggle: UISwitch!
//    @IBOutlet weak var UniversityLable: UILabel!
    @IBOutlet weak var volumeChanged: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonTapped(_ sender: UIButton) {
        print("Button is Tapped")
        if wifiToggle.isOn  {
            print("Wifi is ON")
        } else {
            print("Wifi is OFF")
        }
        print("Volume is \(volumeChanged.value)")
    }
    
//    @IBAction func wifiToggle(_ sender: UISwitch) {
//        if sender.isOn {
//            print("Wifi is ON")
//        } else {
//            print("Wifi is OFF")
//        }
//    }
//    
//    @IBAction func volumeChanged(_ sender: UISlider) {
//        print("Volume is \(sender.value)")
//    }
//    
//    
//    @IBAction func nameChanged(_ sender: UITextField) {
//        if let text  = sender.text {
//            print(text)
//        }
//    }
//    
//    @IBAction func nameEntered(_ sender: UITextField) {
//        if let text  = sender.text {
//            print(text)
//        }
//    }
    
    
}

