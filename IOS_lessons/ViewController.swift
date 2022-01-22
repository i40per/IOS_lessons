//
//  ViewController.swift
//  IOS_lessons
//
//  Created by MacBook on 18.01.2022.
//

import UIKit

enum ArithmeticOperators {
    case minus
    case plus
}

class ViewController: UIViewController {

    @IBOutlet weak var topTextLabel: UILabel!
    @IBOutlet weak var subTitleTextLabel: UILabel!
    @IBOutlet weak var changeStateButton: UIButton!
    @IBOutlet weak var changeStateMinusButton: UIButton!
    @IBOutlet weak var changeStatePlusButton: UIButton!
    @IBOutlet weak var changeCountButton: UIButton!
    
    var count: Int = 0 // var count = 0
    private var index = 0
    private var colorsArray: [UIColor] = [.red, .blue, .yellow, .brown, .orange]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        changeCountButton.backgroundColor = UIColor.red
        
        topTextLabel.text = "Я установил руками свой текст, это Я Евгений, l40perl, 18.01.2022 02:35"
        topTextLabel.font = .boldSystemFont(ofSize: 30)
        
        subTitleTextLabel.font = .italicSystemFont(ofSize: 40)
        
    }
    
    func newFontSize(_ label: UILabel, arithmeticOperators: ArithmeticOperators) {
        var oldSize = label.font.pointSize
        
        switch arithmeticOperators {
        case .minus:
            oldSize -= 1
        case .plus:
            oldSize += 1
        }
        
        label.font = .systemFont(ofSize: oldSize)
        label.sizeToFit()
    }
    @IBAction func changeCountButtonTap(_ sender: Any) {
        index += 1
        
        if index >= colorsArray.count {
            index = 0
        }
        changeCountButton.backgroundColor = colorsArray[index]
        changeCountButton.setTitle("\(index + 1)", for: .normal)
    }
    
    
    @IBAction func changeStateMinusTap(_ sender: Any) {
        newFontSize(topTextLabel, arithmeticOperators: .minus)
        newFontSize(subTitleTextLabel, arithmeticOperators: .minus)
    }
    @IBAction func changeStatePlusTap(_ sender: Any) {
        newFontSize(topTextLabel, arithmeticOperators: .plus)
        newFontSize(subTitleTextLabel, arithmeticOperators: .plus)
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

