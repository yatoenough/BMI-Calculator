//
//  Calculator.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 30/10/2024.
//

struct BMICalculator {
    var bmi: Float
    
    mutating func calculate(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIString() -> String {
        return String(format: "%.1f", bmi)
    }
}
