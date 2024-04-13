//
//  ViewController.swift
//  UpDownGame
//
//  Created by 박정륭 on 4/13/24.
//

import UIKit

class ViewController: UIViewController {
    
    var computerNumber = Int.random(in: 1...100)

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var answerInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        statusLabel.text =
        "숫자를 입력하고 SELECT 해주세요."
    }


    @IBAction func resetButtonTapped(_ sender: Any) {
        
        // 1. input과 statusLabel을 초기화 한다.
        
        answerInput.text = ""
        
        // 2. 컴퓨터 숫자를 새로 뽑는다.
        
        computerNumber = Int.random(in: 1...100)
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: Any) {
        
        // 1. input의 값을 가져온다.
        
        guard let answer = answerInput.text else {
            statusLabel.text = "값을 입력해주세요."
            return;
        }
        
        // 2. 숫자인지 확인하고, 아니라면 경고
        
        if let number = Int(answer) {
            if number < computerNumber {
                statusLabel.text = "UP"
            } else if number > computerNumber {
                statusLabel.text = "DOWN"
            } else {
                statusLabel.text = "BINGO!"
            }
        } else {
            answerInput.text = ""
            statusLabel.text = "숫자만 입력해요"
        }
        
    }
}

