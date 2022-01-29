//
//  FourthViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 25.01.2022.
//

import UIKit

class FourthViewController: UIViewController {
    
    var count1: Int?

    @IBOutlet weak var topLabelFourth: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let strongCount1 = count1 {
            topLabelFourth.text = "Мой четвертый экран уровень = \(strongCount1)"
        }
    }
    
    @IBAction func closeActionFourth(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func nextScreenAction1(_ sender: Any) {
        let thirdViewController = ThirdViewController()
        let fourthViewController = FourthViewController()
        if let strongCount1 = count1 {
            fourthViewController.count1 = strongCount1 + 1
        } else {
            fourthViewController.count1 = 1
        }
        if count1 == 10 {
            present(thirdViewController, animated: true, completion: nil)
        } else {
            present(fourthViewController, animated: true, completion: nil)
        }
    }
}
