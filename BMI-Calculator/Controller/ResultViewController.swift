//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 29/10/2024.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: BMI?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let bmi else { return }
        
        resultLabel.text = String(format: "%.1f", bmi.value)
        adviceLabel.text = bmi.advice
        
        view.backgroundColor = bmi.color
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
