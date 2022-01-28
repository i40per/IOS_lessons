//
//  ThirdViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 23.01.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var topLabel: UILabel!
    var count: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let strongCount = count {
            topLabel.text = "Мой третий экран уровень = \(strongCount)" // count ?? 0
        }
    }
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func nextScreenAction(_ sender: Any) {
        let thirdViewController = ThirdViewController()
        if let strongCount = count {
            thirdViewController.count = strongCount + 1
        } else {
            thirdViewController.count = 1
        }
        present(thirdViewController, animated: true, completion: nil)
    }
}
