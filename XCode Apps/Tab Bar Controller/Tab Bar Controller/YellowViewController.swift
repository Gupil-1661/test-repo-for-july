//
//  ViewController.swift
//  Tab Bar Controller
//
//  Created by Gupil  on 21/07/25.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tabBarItem.badgeValue = "4"
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        tabBarItem.badgeValue = nil
    }
    
}

