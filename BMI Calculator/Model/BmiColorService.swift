//
//  BmiColorService.swift
//  BMI Calculator
//
//  Created by FABRIZIO on 25/09/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BmiColorService {
    let bmiValue: Double
    init(bmiValue: Double) {
        self.bmiValue = bmiValue
    }
    
    var color: UIColor {
        get {
            switch bmiValue {
            case 0.0 ..< 18.5:
                return .green
            case 18.5 ... 24.9:
                return .blue
            case 25.0 ... 29.9:
                return .red
            case 30... :
                return .red
            default:
                return .blue
            }
        }
        
    }
}
