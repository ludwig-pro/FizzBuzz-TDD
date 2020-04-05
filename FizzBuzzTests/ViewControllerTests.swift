//
//  ViewControllerTests.swift
//  FizzBuzzTests
//
//  Created by ludwig vantours on 05/04/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerTests: XCTestCase {


  var viewController : ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    viewController = (storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController)
    UIApplication.shared.keyWindow!.rootViewController = viewController
    
    let _ = viewController.view
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testMove1IncrementsScore() {
    viewController.play(move: Move.number)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 1)
  }
  
  func testMove2IncrementScore() {
    viewController.play(move: Move.number)
    viewController.play(move: Move.number)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 2)
  }
  
  func testHasAGame() {
    XCTAssertNotNil(viewController.game)
  }
  
  // Fizz
  func testFizzIncrementScore() {
    viewController.game?.score = 2
    viewController.play(move: Move.Fizz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 3)
  }
  
  // Buzz
  func testBuzzIncrementScore() {
    viewController.game?.score = 4
    viewController.play(move: Move.Buzz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 5)
  }
  
  // FizzBuzz
  func testFizzBuzzIncrementScore() {
    viewController.game?.score = 14
    viewController.play(move: Move.FizzBuzz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 15)
  }
  
  func testFizzDontIncrementScore() {
    viewController.game?.score = 14
    viewController.play(move: Move.Fizz)
    let newScore = viewController.gameScore
    XCTAssertEqual(newScore, 14)
  }

}
