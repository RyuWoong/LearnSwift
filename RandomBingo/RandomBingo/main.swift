//
//  main.swift
//  RandomBingo
//
//  Created by 박정륭 on 4/13/24.
//

import Foundation

var computerChoice = Int.random(in: 1...100)
var myChocie: Int = 0


while true{
    var userInput = readLine()
    
    if let input = userInput {
        if let number = Int(input) {
            
            myChocie = number
            
        }
    }
    
    if computerChoice > myChocie {
        print("Up")
    } else if computerChoice < myChocie {
        print("Down")
    } else {
        print("Bingo")
        break;
    }
}
