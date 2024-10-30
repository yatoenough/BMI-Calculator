//
//  Calculator.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 30/10/2024.
//

struct BMICalculator {
    var bmi: BMI?
    
    mutating func calculate(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .systemBlue)
        } else if bmiValue < 25 {
            bmi = BMI(value: bmiValue, advice: "You're good", color: .systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: .systemPink)
        }
    }
}
