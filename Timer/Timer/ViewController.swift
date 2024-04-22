//
//  ViewController.swift
//  Timer
//
//  Created by 박정륭 on 4/15/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    weak var timer: Timer?
    var count: Int = 0

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurationUI()
    }

    func configurationUI() {
        mainLabel.text = "초를 선택하세요"
        slider.setValue(slider.maximumValue/2, animated: true)
    }

    @IBAction func resetTapped(_ sender: UIButton) {
        // 초를 0으로 설정하고
        // mainLabel을 초기화
        
        configurationUI()
        count = 0
        timer?.invalidate()
    }
    
    @IBAction func startTapped(_ sender: UIButton) {
        if count == 0 {
            return;
        }
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doSomethingAfter), userInfo: nil, repeats: true)
    }
    
   @objc func doSomethingAfter () {
       Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [self] _ in
           if count > 0 {
               count -= 1
               slider.value = Float(count)
               mainLabel.text = "\(count) 초"
           } else {
               count = 0
               mainLabel.text = "초를 선택하세요"
               timer?.invalidate()
               // 소리
               
               AudioServicesPlayAlertSound(SystemSoundID(1322))
           }
       })
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        count  = Int(sender.value)
        mainLabel.text = "\(count) 초"
    }
}

