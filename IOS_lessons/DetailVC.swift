//
//  DetailVC.swift
//  IOS_lessons
//
//  Created by MacBook on 21.02.2022.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var rootCellLabel: UILabel!
    
    var rootCellLabelName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.rootCellLabel.text = rootCellLabelName
        self.title = rootCellLabelName
    }
}
