//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by vpn on 12/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct Brain {
    
    
    var imc: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = (weight/(height*height))
        if bmi < 18.5 {
           imc = BMI(value: bmi, advice: "Eat more pies", color: .blue)
        }else if bmi < 24.9 {
            imc = BMI(value: bmi, advice: "Fit as a fiddle", color: .green)
        }else {
            imc = BMI(value: bmi, advice: "Eat less pies", color: .red)
        }

    }

     func getBMIValue() -> String {
        return String(format: "%.1f", imc?.value ?? 0.0)
        
    
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "No advice"
        
    }
    func getColor() -> UIColor {
        return imc?.color ?? .white
    }

    
}

