//
//  ResultController.swift
//  BMI Calculator
//
//  Created by FABRIZIO on 24/09/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultController: UIViewController {

    @IBOutlet weak var resultBackGround: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var bmiResultLabel: UILabel!
    var resultBmi: Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

        let messaje = BmiMessageService(bmiValue: resultBmi).message
        messageLabel.text = messaje
        
        let color = BmiColorService(bmiValue: resultBmi).color
        resultBackGround.backgroundColor = color
        
        bmiResultLabel.text = String(format: "%.1f", resultBmi)
    }
    

    @IBAction func recalculateButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }

}
