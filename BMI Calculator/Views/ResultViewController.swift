//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Angelo Hudej on 04.03.21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var bmiAdvice: String?
    var bmiColor: UIColor?
    
    @IBOutlet weak var LblBmi: UILabel!
    @IBOutlet weak var LblAdvice: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LblBmi.text = bmiValue
        LblAdvice.text = bmiAdvice
        view.backgroundColor = bmiColor
        
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
