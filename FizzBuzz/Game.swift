//
//  Game.swift
//  FizzBuzz
//
//  Created by ludwig vantours on 05/04/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import Foundation

class Game {
  var score = 0
  let brain = Brain()
  
  func play(move: Move) -> (right: Bool, score: Int)  {
    
    let result = brain.check(number: score +  1) == move
    
    if(result) {
      score += 1
      return (true, score)
    }
    
    return (false, score)
  }
}
