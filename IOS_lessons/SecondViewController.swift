//
//  SecondViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 23.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "Урок 2  23.01.2022  Мой второй экран"
    }
    @IBAction func manualShowScreen(_ sender: Any) {
        let thirdViewController = ThirdViewController()
        present(thirdViewController, animated: true, completion: nil)
    }
}
