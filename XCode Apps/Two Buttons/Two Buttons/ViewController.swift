//
//  ViewController.swift
//  Two Buttons
//
//  Created by Gupil  on 16/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        textLable.text = textField.text
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        textField.text = ""
        textLable.text = ""
    }
}

