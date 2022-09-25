//
//  BmiMessageService.swift
//  BMI Calculator
//
//  Created by FABRIZIO on 25/09/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct BmiMessageService {
    let bmiValue:Double
    init(bmiValue: Double) {
        self.bmiValue = bmiValue
    }
    
    var message: String {
        get {
            switch bmiValue {
            case 0.0 ..< 18.5:
                return "Underweight"
            case 18.5 ... 24.9:
                return "Normal weight"
            case 25.0 ... 29.9:
                return "Overweight"
            case 30... :
                return "Obesity"
            default:
                return "I dont know"
            }
        }
    }
}
