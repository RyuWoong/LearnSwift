//
//  ViewController.swift
//  DiceGame
//
//  Created by 박정륭 on 4/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!

    @IBOutlet weak var secondImageView: UIImageView!
    
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"),#imageLiteral(resourceName: "black2"),#imageLiteral(resourceName: "black3"),#imageLiteral(resourceName: "black4"),#imageLiteral(resourceName: "black5"),#imageLiteral(resourceName: "black6")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButtonTapped(_ sender: UIButton) {
        // 첫번째 이미지뷰의 이미지를 랜덤으로
        firstImageView.image = diceArray.randomElement()
        // 두번째 이미지뷰의 이미지를 랜덤으로
        secondImageView.image = diceArray.randomElement()

    }
}

