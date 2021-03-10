//
//  CalculatedBrain.swift
//  BMI Calculator
//
//  Created by Angelo Hudej on 10.03.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Mehr essen!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Perfekt", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else {
            bmi = BMI(value: bmiValue, advice: "Weniger essen", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiValueString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueString
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? ""
    }

    func getBMIColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
    
}

