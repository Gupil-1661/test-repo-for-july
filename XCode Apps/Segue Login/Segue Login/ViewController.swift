//
//  ViewController.swift
//  Segue Login
//
//  Created by Gupil on 30/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LoginButton: UIButton!
    
    @IBOutlet weak var UsernameTextfield: UITextField!
    @IBOutlet weak var PasswordTextfield: UITextField!
    
    @IBOutlet weak var ForgotUsernameButton: UIButton!
    @IBOutlet weak var ForgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        
        if sender == ForgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == ForgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = "Welcome \(UsernameTextfield.text ?? "User")"
        }
    }
    
    @IBAction func ForgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgotSegue", sender: sender)
    }
    
    @IBAction func ForgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "ForgotSegue", sender: sender)
    }
}

