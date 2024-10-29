//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 28/10/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = String(format: "%.2fm", heightSlider.value)
        weightLabel.text = String(format: "%.0fkg", weightSlider.value)
    }
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0fkg", weightSlider.value)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / pow(height, 2)
        print(bmi)
    }

}
