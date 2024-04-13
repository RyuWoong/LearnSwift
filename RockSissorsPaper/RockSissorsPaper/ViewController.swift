//
//  ViewController.swift
//  RockSissorsPaper
//
//  Created by 박정륭 on 4/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comLabel: UILabel!
    @IBOutlet weak var myLabel: UILabel!
   
    var comChoice : Rps = Rps(rawValue:Int.random(in: 0...2))!
    var myChoice : Rps = Rps.rock
    
    // 함수 / 메서드
    // 앱의 화면에 진입하면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 컴퓨터와 내 이미지뷰에 이미지를 띄워야함
        // 컴퓨터와 내 레이블에 "준비"를 띄워야함
        
        comImageView.image = UIImage(resource: .ready)
        myImageView.image = UIImage(resource: .ready)
        
        comLabel.text = "준비"
        myLabel.text = "준비"
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
       // 가위 바위 보를 선택했을 때 그 정보를 저장해야함
        let title = sender.currentTitle!
        print(title)
        
        switch title {
        case "가위":
            myChoice = Rps.scissors
            break;
        case "바위":
            myChoice = Rps.rock
            break;
        case "보":
            myChoice = Rps.paper
            break;
        default:
            break
        }
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터가 랜덤으로 선택한 것을 표시해아함 (이미지뷰와 레이블에)
        
        switch comChoice {
        case .rock:
            comImageView.image = UIImage(resource: .rock)
            comLabel.text = "바위"
            break
        case .paper:
            comImageView.image = UIImage(resource: .paper)
            comLabel.text = "보"
            break
        case .scissors:
            comImageView.image = UIImage(resource: .scissors)
            comLabel.text = "가위"
            break
        }
        
        // 2.내가 랜덤으로 선택한 것을 표시해아함 (이미지뷰와 레이블에)
        switch myChoice {
        case .rock:
            myImageView.image = UIImage(resource: .rock)
            myLabel.text = "바위"
            break
        case .paper:
            myImageView.image = UIImage(resource: .paper)
            myLabel.text = "보"
            break
        case .scissors:
            myImageView.image = UIImage(resource: .scissors)
            myLabel.text = "가위"
            break
        }
        
        // 3. 컴퓨터가 선택한 것과 내가 선택한 것을 비교하여 이겼는지 or 졌는지 판단
        
        if(myChoice == comChoice) {
            mainLabel.text = "비겼다"
        } else if myChoice == .rock && comChoice == .scissors {
            mainLabel.text = "이겼다"
        }else if myChoice == .scissors && comChoice == .paper {
            mainLabel.text = "이겼다"
        }else if myChoice == .paper && comChoice == .rock {
            mainLabel.text = "이겼다"
        } else {
            mainLabel.text = "졌다"
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터 이미지 뷰와 레이블에 준비
        comImageView.image = UIImage(resource: .ready)
        comLabel.text = "준비"
        // 2. 내 이미지 뷰와 레이블에 준비
        myImageView.image = UIImage(resource: .ready)
        myLabel.text = "준비"
        // 3. 메인 레이블 "선택하세요"
        mainLabel.text = "선택"
        // 4. 컴퓨터가 다시 랜덤 선택 저장
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
}

