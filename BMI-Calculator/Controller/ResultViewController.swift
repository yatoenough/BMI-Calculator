//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 29/10/2024.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: String?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmi
        
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
