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
    
    var rpsManager = RPSManager()

   

    
    
    // 함수 / 메서드
    // 앱의 화면에 진입하면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // 컴퓨터와 내 이미지뷰에 이미지를 띄워야함
        // 컴퓨터와 내 레이블에 "준비"를 띄워야함
        
        comImageView.image = rpsManager.getReady().rpsInfo.image
        comLabel.text = rpsManager.getReady().rpsInfo.name

        myImageView.image = rpsManager.getReady().rpsInfo.image
        myLabel.text = rpsManager.getReady().rpsInfo.name
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
       // 가위 바위 보를 선택했을 때 그 정보를 저장해야함
        rpsManager.userGetSelected(name: sender.currentTitle!)
        
        
        // 미리보기
        myImageView.image = rpsManager.getUserRPS().rpsInfo.image
        myLabel.text = rpsManager.getUserRPS().rpsInfo.name
    }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터가 랜덤으로 선택한 것을 표시해아함 (이미지뷰와 레이블에)
        
        comImageView.image = rpsManager.getComputerRPS().rpsInfo.image
        comLabel.text = rpsManager.getComputerRPS().rpsInfo.name
        
        myImageView.image = rpsManager.getUserRPS().rpsInfo.image
        myLabel.text = rpsManager.getUserRPS().rpsInfo.name
        
        mainLabel.text = rpsManager.getRpsResult()
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1. 컴퓨터 이미지 뷰와 레이블에 준비
        comImageView.image = rpsManager.getReady().rpsInfo.image
        myImageView.image = rpsManager.getReady().rpsInfo.image
        
      
        // 2. 내 이미지 뷰와 레이블에 준비
        comLabel.text = rpsManager.getReady().rpsInfo.name
        myLabel.text = rpsManager.getReady().rpsInfo.name
        // 3. 메인 레이블 "선택하세요"
        mainLabel.text = "선택"
        // 4. 컴퓨터가 다시 랜덤 선택 저장
        rpsManager.allReset()
    }
    
}

