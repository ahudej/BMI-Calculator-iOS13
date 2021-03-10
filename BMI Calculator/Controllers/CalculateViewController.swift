//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var LblHeight: UILabel!
    @IBOutlet weak var LblWeight: UILabel!
    @IBOutlet weak var SldHeight: UISlider!
    @IBOutlet weak var SldWeight: UISlider!
        
    var calculatorBrain = CalculatorBrain()
    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    @IBAction func HeightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        LblHeight.text = "\(height)m"
    }
    
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        //let valueInt: Int = Int(sender.value)
        //LblWeight.text = "\(valueInt)Kg"
        
        let weight = String(format: "%.0f", sender.value)
        LblWeight.text = "\(weight)Kg"
    }
    
    @IBAction func BtnCalculatePressed(_ sender: UIButton) {
        let height = SldHeight.value
        let weight = SldWeight.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.bmiAdvice = calculatorBrain.getBMIAdvice()
            destinationVC.bmiColor = calculatorBrain.getBMIColor()
        }
    }
}

