//
//  ViewController.swift
//  FizzBuzz
//
//  Created by ludwig vantours on 05/04/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//  https://medium.com/@ynzc/getting-started-with-tdd-in-swift-2fab3e07204b

import UIKit

class ViewController: UIViewController {
  var game: Game?
  var gameScore: Int? {
    didSet {
      numberButton.setTitle("\(gameScore ?? 0)", for: .normal)
    }
  }
  
  @IBOutlet weak var numberButton: UIButton!
  @IBOutlet weak var fizzButton: UIButton!
  @IBOutlet weak var buzzButton: UIButton!
  @IBOutlet weak var fizzBuzzButton: UIButton!
  
  @IBAction func buttonTapped(_ sender: UIButton) {
    switch sender {
      case numberButton:
         play(move: Move.number)
      case fizzButton:
        play(move: Move.Fizz)
      case buzzButton:
        play(move: Move.Buzz)
      case fizzBuzzButton:
        play(move: Move.FizzBuzz)
      default:
       print("Invalid selection")
    }
  }
  
  func play(move: Move) {
    guard let unwrappedGame = game else {
      print("Game is nil!")
      return
    }
    let response = unwrappedGame.play(move: move)
    
    if(!response.right) {
      print("do something")
    }
    
    gameScore = response.score
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    game = Game()
    gameScore = game?.score
  }
  
}

