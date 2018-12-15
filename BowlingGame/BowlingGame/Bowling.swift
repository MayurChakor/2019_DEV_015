//
//  Bowling.swift
//  TheBowlingGame
//
//  Created by MAYUR CHAKOR on 12/12/18.
//  Copyright © 2018 Bowling. All rights reserved.
//

import UIKit

class Bowling: NSObject {
    
    var rolls = [Int](repeating: 0, count: 22)
    var frames = [Int](repeating: 0, count: 10)
    var currentRoll = 0
    
    func roll(_ pins: Int) {
        rolls[currentRoll] = pins
        
        if currentRoll<20 && pins == 10 && currentRoll%2 == 0 {
            currentRoll += 1
            rolls[currentRoll] = 0
        }
        currentRoll += 1
    }
    
    func getScoreForFrames()-> Int {
        var score = 0
        
        for frame:Int in 0...9 {
            
            let firstIndex = frame  * 2
            let secondIndex = (frame * 2) + 1
            
            if(isStrike(frameIndex: firstIndex)) {
                score += strikeBonus(frameIndex: firstIndex)
            }  else if (isSpare(frameIndex: secondIndex)) {
                score += spareBonus(frameIndex: secondIndex)
            } else {
                let firstHit = rolls[firstIndex]
                let secondHit = rolls[secondIndex]
                score += firstHit + secondHit
            }
            frames[frame] = score
            print("\(frame + 1): \(score)")
        }
        return score
    }
    
    func isStrike(frameIndex:Int)->Bool {
        if frameIndex%2 == 0 {
            return (rolls[frameIndex] == 10)
        }
        return false
    }
    
    func isSpare(frameIndex:Int)->Bool {
        if frameIndex%2 == 1 {
            return (rolls[frameIndex] + rolls[frameIndex - 1] == 10)
        }
        return false
    }
    
    func spareBonus(frameIndex:Int)->Int {
        return 10 + rolls[frameIndex + 1]
    }
    
    func strikeBonus(frameIndex:Int)->Int {
        if rolls[frameIndex + 2] == 10 {
            return 10 + rolls[frameIndex + 2] + rolls[(frameIndex + 4) < 21 ? frameIndex + 4 : 21]
            
        } else {
            return 10 + rolls[frameIndex + 2] + rolls[frameIndex + 3]
        }
    }
    
    func sumOfPins(frameIndex:Int)->Int {
        return rolls[frameIndex] + rolls[frameIndex + 1]
    }
}
