//
//  MyDetailVC.swift
//  IOS_lessons
//
//  Created by MacBook on 23.02.2022.
//

import UIKit

class MyDetailVC: UIViewController {
    
    @IBOutlet weak var myRootCellLabel: UILabel!
    
    var myRootCellLabelName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myRootCellLabel.text = myRootCellLabelName
        self.title = myRootCellLabelName
    }
}
