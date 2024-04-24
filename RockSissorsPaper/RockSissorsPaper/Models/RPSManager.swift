//
//  RPSManager.swift
//  RockSissorsPaper
//
//  Created by 박정륭 on 4/24/24.
//

import Foundation


class RPSManager {
    
    private var comChoice : Rps = Rps(rawValue:Int.random(in: 1...3))!
    private var myChoice : Rps = Rps.rock
    
    func getReady() -> Rps {
        return Rps.ready
    }
    
    func getUserRPS() -> Rps {
        return myChoice
    }
    
    
    func getComputerRPS() -> Rps {
        return comChoice
    }
    
    func userGetSelected(name:String) {
        switch name {
        case "가위":
            myChoice = Rps.scissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice =  Rps.paper
        default:
            myChoice = Rps.rock
        }
    }
    
    func getRpsResult() -> String {
        if(myChoice == comChoice) {
            return "비겼다"
        } else if myChoice == .rock && comChoice == .scissors {
            return "이겼다"
        }else if myChoice == .scissors && comChoice == .paper {
            return "이겼다"
        }else if myChoice == .paper && comChoice == .rock {
            return "이겼다"
        } else {
            return "졌다"
        }
    }
    
    func allReset() {
        comChoice = Rps(rawValue:Int.random(in: 1...3))!
        myChoice = Rps(rawValue:Int.random(in: 1...3))!
    }

}
