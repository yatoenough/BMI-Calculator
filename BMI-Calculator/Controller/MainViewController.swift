//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Nikita Shyshkin on 28/10/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    var bmi: Float = 0.0
    
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
        
        bmi = weight / pow(height, 2)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultVC = segue.destination as! ResultViewController
        resultVC.bmi = String(format: "%.2f", bmi)
    }

}
