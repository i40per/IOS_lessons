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
    }
    
    @IBAction func unwindToSecondViewController(_ unwindSegue: UIStoryboardSegue) {
        
    }
    
    @IBAction func manualShowScreen(_ sender: Any) {
        let thirdViewController = ThirdViewController()
        present(thirdViewController, animated: true, completion: nil)
    }
    
    @IBAction func manualShowScreen2(_ sender: Any) {
        let fourthViewController = FourthViewController()
        present(fourthViewController, animated: true, completion: nil)
    }
}
