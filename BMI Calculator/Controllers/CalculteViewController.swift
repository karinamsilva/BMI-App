//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculteViewController: UIViewController {
    
    var calculatorBrain = Brain()
    
    var valorImc = "0.0"
    
    @IBOutlet weak var altura: UILabel!
    @IBOutlet weak var peso: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func hieghtSlider(_ sender: UISlider) {
        altura.text = String(format: "%.2f m", sender.value)
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        peso.text = String(format: "%.0f Kg", sender.value)
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destination = segue.destination as! ResultsViewController
            destination.imcValue = calculatorBrain.getBMIValue()
            destination.advice = calculatorBrain.getAdvice()
            destination.color = calculatorBrain.getColor()
        }
    }
}

