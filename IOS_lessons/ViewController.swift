//
//  ViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 18.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topTextLabel: UILabel!
    @IBOutlet weak var subTitleTextLabel: UILabel!
    @IBOutlet weak var changeStateButton: UIButton!
    
    var count: Int = 0 // var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topTextLabel.text = "Я установил руками свой текст, это Я Евгений, l40perl, 18.01.2022 02:35"
        topTextLabel.font = .boldSystemFont(ofSize: 30)
        
        subTitleTextLabel.font = .italicSystemFont(ofSize: 40)
        
    }
    @IBAction func changeTextStateTap(_ sender: Any) {
        if count == 0 {
            subTitleTextLabel.text = "Ой, нажалась кнопка"
            changeStateButton.setTitle("Ты меня уже нажал", for: .normal)
            changeStateButton.setTitleColor(.magenta, for: .normal)
        } else if count == 1 {
            subTitleTextLabel.text = "Ой, нажалась кнопка и это 1"
            changeStateButton.setTitle("Ты меня уже нажал второй раз", for: .normal)
            changeStateButton.setTitleColor(.black, for: .normal)
        } //else if count == 2 {
        
          //} else if count > 5 {
        
          //} else if count < 10 {
        
          //} else if count >= 100 {
        
        count = count + 1 // count = 0 (обнулить число)
    }
    

}

