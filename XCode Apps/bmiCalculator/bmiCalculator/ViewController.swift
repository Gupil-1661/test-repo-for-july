//
//  ViewController.swift
//  bmiCalculator
//
//  Created by Gupil  on 14/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightTextfield: UITextField!
    
    
    @IBOutlet weak var heightTextfield: UITextField!
    
    
    @IBOutlet weak var calculatedBMI: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButtonPressed(_ sender: Any) {
        let weightString = weightTextfield.text ?? ""
        let weight = Double(weightString) ?? 0
        
        let heightString = heightTextfield.text ?? ""
        let height = Double(heightString) ?? 0
        
        let bmi = weight / (height * height)
        
        calculatedBMI.text = "BMI is: \(bmi)"
    }
    
}

