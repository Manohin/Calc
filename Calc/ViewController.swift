//
//  ViewController.swift
//  Calc
//
//  Created by Alexey Manokhin on 15.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var devideButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var floatingPointButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        var buttons: [UIButton] = [
            ACButton, plusMinusButton, percentButton, devideButton, sevenButton, eightButton, nineButton, multiplyButton, fourButton, fiveButton, sixButton, minusButton, oneButton, oneButton, twoButton, threeButton, plusButton, zeroButton, floatingPointButton, equalsButton]
        
        buttons.map( { $0.layer.cornerRadius = 40 })
        
    }

}

