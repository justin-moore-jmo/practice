//
//  ViewController.swift
//  loop practive
//
//  Created by Justin Moore on 4/9/19.
//  Copyright © 2019 Justin Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switchLabel.text = "I love this button"
        sliderLabel.text = String(Int(sliderOutlet.value))
        stepperLabel.text = String(Int(stepperOutlet.value))
    }

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var stepperOutlet: UIStepper!
    

    @IBAction func switchButton(_ sender: Any) {
        if switchOutlet.isOn == true {
            switchLabel.text = "Switch on"
        } else {
            switchLabel.text = "Switch off"
        }
    }
    
    @IBAction func sliderButton(_ sender: Any) {
        sliderLabel.text = String(Int(sliderOutlet.value))
    }
    
    @IBAction func stepperButton(_ sender: Any) {
        stepperLabel.text = String(Int(stepperOutlet.value))
        var stepNumber = Int(stepperOutlet.value)
        if stepNumber == 20 {
            for usefulNumber in 1...20{
                stepNumber = 20 - usefulNumber
                stepperOutlet.value = Double(stepNumber)
                stepperLabel.text = String(Int(stepperOutlet.value))
            }
            
        }
    }
    
    @IBAction func defaultButton(_ sender: Any) {
        switchOutlet.isOn = true
        sliderOutlet.maximumValue = 10
        sliderOutlet.value = 5.0
        stepperOutlet.value = 0
        switchLabel.text = "Switch on"
        sliderLabel.text = String(Int(sliderOutlet.value))
        stepperLabel.text = String(Int(stepperOutlet.value))
    }
    
    @IBAction func syncButton(_ sender: Any) {
        if stepperOutlet.value >= Double(sliderOutlet.maximumValue){
        sliderOutlet.maximumValue = Float (stepperOutlet.value)
        }
        
        sliderOutlet.value = Float(stepperOutlet.value)
        sliderLabel.text = String(Int(sliderOutlet.value))
        
        
    }
}

