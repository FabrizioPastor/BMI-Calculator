//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f%@", sender.value, "m")
    }
    
    @IBAction func weightValueChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f%@", sender.value, "Kg")
    }
    @IBAction func calculteButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            guard let resultController = segue.destination as? ResultController else {return}
            
            let height = Double(heightSlider.value)
            let weight = Double(weightSlider.value)
            
            resultController.resultBmi = BmiCalculate(height: height, wheight: weight).calculate()
        }
    }
}

