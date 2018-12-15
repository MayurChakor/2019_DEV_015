//
//  ViewController.swift
//  BowlingGame
//
//  Created by MAYUR CHAKOR on 12/12/18.
//  Copyright © 2018 MAYUR CHAKOR. All rights reserved.
//

import UIKit

class ViewController:UIViewController{
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var inputLable: UILabel!
    @IBOutlet weak var finalScoreLabel: UILabel!
    var bowling = Bowling()
    
    
    @IBAction func calculateClicked(_ sender: UIButton) {
        if(segment.selectedSegmentIndex == 0)
        {
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            bowling.roll(10)
            finalScoreLabel.text = String(bowling.getScoreForFrames())
        }
        else if (segment.selectedSegmentIndex == 1)
        {
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            bowling.roll(9)
            bowling.roll(0)
            
            finalScoreLabel.text = String(bowling.getScoreForFrames())
        }
        else if (segment.selectedSegmentIndex == 2)
        {
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            bowling.roll(5)
            
            finalScoreLabel.text = String(bowling.getScoreForFrames())
        }
        else
        {
            bowling.roll(4)
            bowling.roll(5)
            
            bowling.roll(6)
            bowling.roll(4)
            
            bowling.roll(1)
            bowling.roll(4)
            
            bowling.roll(5)
            bowling.roll(5)
            
            bowling.roll(10)
            
            bowling.roll(0)
            bowling.roll(1)
            
            bowling.roll(7)
            bowling.roll(3)
            
            bowling.roll(6)
            bowling.roll(4)
            
            bowling.roll(10)
            
            bowling.roll(2)
            bowling.roll(8)
            bowling.roll(6)
            finalScoreLabel.text = String(bowling.getScoreForFrames())
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib
    }
    
    
    @IBAction func segmentClicked(_ sender: UISegmentedControl) {
        //initialise rolls and frames
        bowling.rolls = [Int](repeating: 0, count: 22)
        bowling.frames = [Int](repeating: 0, count: 10)
        bowling.currentRoll = 0
        
        if (segment.selectedSegmentIndex == 0)
        {
            inputLable.text =  "10|10|10|10|10|10|10|10|10|10"
        }
        else if (segment.selectedSegmentIndex == 1)
        {
            inputLable.text =  "9-0|9-0|9-0|9-0|9-0|9-0|9-0|9-0|9-0|9-0"
        }
        else if (segment.selectedSegmentIndex == 2)
        {
            inputLable.text =  "5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5-Spare|5"
        }
        else{
            inputLable.text =  "4-5|6-Spare|1-4|5-Spare|Strike|0-1|7-Spare|6-Spare|Strike|2-Spare|6"
        }
    }


}

