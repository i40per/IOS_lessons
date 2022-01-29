//
//  RootViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 29.01.2022.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"RootTableViewCell", bundle: nil), forCellReuseIdentifier: "rootCell")
    }
}

extension RootViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = tableView.cellForRow(at: indexPath) as? RootTableViewCell else {
            return
        }
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.0...1.0), green: CGFloat.random(in: 0.0...1.0), blue: CGFloat.random(in: 0.0...1.0), alpha: 1)
    }
}

extension RootViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 900
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "rootCell") else {
            return UITableViewCell()
        }
        (cell as? RootTableViewCell)?.customLabel.text = "Урок 3 ячейка\(indexPath.row)"
        cell.backgroundColor = .white
        return cell
    }
}
