//
//  RootViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 29.01.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let houseData = ["RootTableViewCell","MySecondTableViewCell" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UITableView"
        
        tableView.register(UINib(nibName:"RootTableViewCell", bundle: nil), forCellReuseIdentifier: "rootCell")
        tableView.register(UINib(nibName:"MySecondTableViewCell", bundle: nil), forCellReuseIdentifier: "myRootCell")
    }
}

/*extension RootViewController: UITableViewDelegate {
    
    func tableView(_ myTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = myTableView.cellForRow(at: indexPath) as? MySecondTableViewCell else {
            return
        }
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.0...1.0), green: CGFloat.random(in: 0.0...1.0), blue: CGFloat.random(in: 0.0...1.0), alpha: 1)
        
    }
}*/

extension RootViewController: UITableViewDelegate {
    
    func tableView(_ myTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = DetailVC()
        let indexPathString = "\(indexPath.row)"
        vc.rootCellLabelName = indexPathString
        self.navigationController?.pushViewController(vc, animated: true)
        self.tableView.deselectRow(at: indexPath, animated: true)
        
        guard let cell = myTableView.cellForRow(at: indexPath) as? MySecondTableViewCell else {
            return
        }
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.0...1.0), green: CGFloat.random(in: 0.0...1.0), blue: CGFloat.random(in: 0.0...1.0), alpha: 1)
        
    }
}

extension RootViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return houseData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if ((indexPath.row + 1) % 2) == 0 {
            guard let myRootCell = tableView.dequeueReusableCell(withIdentifier: "myRootCell") else {
                return UITableViewCell()
            }
            (myRootCell as? MySecondTableViewCell)?.myCustomLabel.text = "l40perl 01.02.2022\(indexPath.row)"
            myRootCell.backgroundColor = .white
            return myRootCell
        } else {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "rootCell") else {
                return UITableViewCell()
            }
            (cell as? RootTableViewCell)?.customLabel.text = "Урок 3 ячейка\(indexPath.row)"
            cell.backgroundColor = .white
            return cell
        }
        
    }
}
