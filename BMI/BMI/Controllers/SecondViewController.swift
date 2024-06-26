//
//  SecondViewController.swift
//  BMI
//
//  Created by 박정륭 on 4/23/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var bmi: BMI?
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
    }

    func makeUI() {
        bmiNumberLabel.clipsToBounds =  true
        bmiNumberLabel.layer.cornerRadius = 8
        bmiNumberLabel.backgroundColor = .gray
        
        backButton.clipsToBounds = true
        backButton.layer.cornerRadius = 5
        
        guard let bmi = bmi else { return }
        bmiNumberLabel.text = String(bmi.value)
        adviceLabel.text = bmi.advice
        bmiNumberLabel.backgroundColor = bmi.matchColor
        
    }

    @IBAction func backButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
}
