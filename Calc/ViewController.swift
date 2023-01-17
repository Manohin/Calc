//
//  ViewController.swift
//  Calc
//
//  Created by Alexey Manokhin on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var firstNumber = 0.0
    var secondNumber = 0.0
    var enterNumber = false
    var operation = 0
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet var buttons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let authorLabel = UILabel(
            frame: CGRect(
                x: 20,
                y: 30,
                width: 250,
                height: 20)
        )
        authorLabel.textColor = .white
        authorLabel.text = "Alexey Manohin"
        self.view.addSubview(authorLabel)
        
        for button in buttons {
            button.layer.cornerRadius = 40
        }
        //    buttons.map({ $0.layer.cornerRadius = 40 })
        displayLabel.text = ""
    }
    
    @IBAction func digits(_ sender: UIButton) {
        
        let tagButton = sender.tag
        
        if enterNumber == true {
            displayLabel.text = String(tagButton)
            enterNumber = false
        } else {
            displayLabel.text = (displayLabel.text ?? "") + String(tagButton)
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if sender.tag != 10 && sender.tag != 15 && displayLabel.text != "" {
            firstNumber = Double(displayLabel.text!) ?? 0
        } else {
            secondNumber = Double(displayLabel.text!) ?? 0
        }
        
        switch sender.tag {
        case 10:
            displayLabel.text = ""
        case 11:
            displayLabel.text = "/"
            operation = 11
            enterNumber = true
        case 12:
            displayLabel.text = "*"
            operation = 12
            enterNumber = true
        case 13:
            displayLabel.text = "-"
            operation = 13
            enterNumber = true
        case 14:
            displayLabel.text = "+"
            operation = 14
            enterNumber = true
        case 15:
            if operation == 11 {
                if secondNumber != 0 {
                    displayLabel.text = String(firstNumber / secondNumber)
                } else {
                    // displayLabel.textColor = .red
                    // displayLabel.text = "На ноль делить НЕЛЬЗЯ!"
                    
                    let alert = UIAlertController(
                        title: "На \(Int(secondNumber)) делить нельзя!",
                        message: "Привет, 33 developers! =)",
                        preferredStyle: .alert
                    )
                    alert.addAction(UIAlertAction(
                        title: "Ладно, больше не буду",
                        style: .cancel)
                    )
                    present(alert, animated: true)
                }
                
            } else if operation == 12 {
                displayLabel.text = String(firstNumber * secondNumber)
            } else if operation == 13 {
                displayLabel.text = String(firstNumber - secondNumber)
            } else if operation == 14 {
                displayLabel.text = String(firstNumber + secondNumber)
            }
        case 16:
            guard (displayLabel.text != "") else { return }
            displayLabel.text = "-" + displayLabel.text!
        case 17:
            guard (displayLabel.text != "") else { return }
            displayLabel.text = String(Double(displayLabel.text!)! / 100)
        default:
            return
        }
    }
}

