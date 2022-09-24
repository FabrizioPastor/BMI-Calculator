//
//  BmiCalculate.swift
//  BMI Calculator
//
//  Created by FABRIZIO on 24/09/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct BmiCalculate {
    let height, wheight : Double
    
    init(height: Double, wheight: Double) {
        self.height = height
        self.wheight = wheight
    }
    
    func calculate() -> Double {
        return wheight / pow(height, 2)
    }
}
