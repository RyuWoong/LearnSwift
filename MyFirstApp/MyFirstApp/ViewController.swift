//
//  ViewController.swift
//  MyFirstApp
//
//  Created by 박정륭 on 4/12/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var myButton: UIButton!
    // 앱
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        mainLabel.backgroundColor = UIColor.green
        mainLabel.text = "안녕하세요"
        myButton.backgroundColor = UIColor.yellow
    }
    
}

