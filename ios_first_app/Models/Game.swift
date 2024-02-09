//
//  Game.swift
//  ios_first_app
//
//  Created by Morris, Noah L (morri095) on 2/8/24.
//

import Foundation
struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    //simply code like this
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        //absolute value of slider minus target value better solution?
        //return not even needed just last line of 100 - abs(targer -sliderValue)
        var difference: Int
        if sliderValue > target {
            difference = sliderValue - target
            
        } else if target > sliderValue {
            difference = target - sliderValue
        } else {
            difference = 0
        }
        
        let awardedPoints: Int = 100 - difference
        return awardedPoints
    }
}
