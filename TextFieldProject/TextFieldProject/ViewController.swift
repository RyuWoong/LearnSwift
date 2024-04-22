//
//  ViewController.swift
//  TextFieldProject
//
//  Created by 박정륭 on 4/15/24.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.delegate = self
        
        setup()
    }
    
    func setup() {
        view.backgroundColor = UIColor.gray
        
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .always
        textField.returnKeyType = .next
        
        textField.becomeFirstResponder()
    }
    
    // 화면의 탭을 감지하는
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
//        textField.resignFirstResponder()
    }
    
    // 입력을 시작할때 호출(시작할지 말지의 여부 허락하는 것)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 시점 -
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유저가 텍스트 필드 입력을 시작했다.")
    }
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print(#function)
        return true
    }
    
    // 텍스트 글자 내용이 입력되거나 지워질 때 호출 되고
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(range)
        print(string)
        let maxLength = 10
        let currentString : NSString = (textField.text ?? "") as NSString
        let newString :NSString = currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
        
     
    }
    
    
    // 텍스트필드 엔터키가 눌러지면
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        
        if(textField.text == "") {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
        

    }
    
    // 텍스프필드 입력이 끝날때 호출
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print(#function)
        return true

    }
    
    // 텍스트 필드 입력이 실제 끝났을 때
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("유저가 텍스트필드의 입력을 끝냈다.")
        textField.text = ""
    }
    

    @IBAction func doneButtonTapped(_ sender: UIButton) {
        textField.resignFirstResponder()
    }
    
}

