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
        tableView.register(UINib(nibName:"MySecondTableViewCell", bundle: nil), forCellReuseIdentifier: "myRootCell")
    }
}

extension RootViewController: UITableViewDelegate {
    
    func tableView(_ myTableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = myTableView.cellForRow(at: indexPath) as? MySecondTableViewCell else {
            return
        }
        cell.backgroundColor = UIColor(red: CGFloat.random(in: 0.0...1.0), green: CGFloat.random(in: 0.0...1.0), blue: CGFloat.random(in: 0.0...1.0), alpha: 1)
        
    }
}

extension RootViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        /*
         так как индекс ячеек в таблице начинается с нуля, то в проверке, для простоты, добавляем + 1 и смотрим
         остаток от деления на два - если он равен 0 - то значит индекс ячейки попадает на
         интервал каждой второй ячейки
        */
        if ((indexPath.row + 1) % 2) == 0 {
            guard let myRootCell = tableView.dequeueReusableCell(withIdentifier: "myRootCell") else {
                return UITableViewCell()
            }
            (myRootCell as? MySecondTableViewCell)?.myCustomLabel.text = "l40perl 01.02.2022\(indexPath.row)"
            myRootCell.backgroundColor = .white
            return myRootCell
        } else {
            /*
             здесь соотвественно else - то есть все остальные случае (если первое условие не прошло),
             то показываем нашу изначальную ячейку
             */
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "rootCell") else {
                return UITableViewCell()
            }
            (cell as? RootTableViewCell)?.customLabel.text = "Урок 3 ячейка\(indexPath.row)"
            cell.backgroundColor = .white
            return cell
        }
    }
}
