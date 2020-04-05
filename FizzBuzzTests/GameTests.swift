//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by ludwig vantours on 05/04/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
  
  let game = Game()
  
  func testGameStartsAtZero() {
    XCTAssertTrue(game.score == 0)
  }
  
  func testOnPlayScoreIncremented() {
    _ = game.play(move: Move.number)
    XCTAssertTrue(game.score == 1)
  }
  
  func testOnPlayTwiceScoreIncremented() {
    game.score = 1
    _ = game.play(move: Move.number)
    XCTAssertTrue(game.score == 2)
  }
  
  func testIfMoveIsRight() {
    game.score = 2
    let response = game.play(move: Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
  
  func testIfMoveIsWrong() {
    game.score = 1
    let response = game.play(move: Move.Fizz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
//  * Correct “Buzz” move.
  func testIfBuzzMoveisRight() {
    game.score = 4
    let response = game.play(move: Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
//  * Incorrect “Buzz” move.
  func testIfBuzzMoveisWrong() {
    game.score = 5
    let response = game.play(move: Move.Buzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
//  * Correct “FizzBuzz” move.
  func testIfFizzBuzzMoveisRight() {
    game.score = 14
    let response = game.play(move: Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, true)
  }
//  * Incorrect “FizzBuzz” move.
  func testIfFizzBuzzMoveisWrong() {
    game.score = 16
    let response = game.play(move: Move.FizzBuzz)
    let result = response.right
    XCTAssertEqual(result, false)
  }
//  * Correct “Number” move.
  func testIfNumberMoveisRight() {
    game.score = 1
    let response = game.play(move: Move.number)
    let result = response.right
    XCTAssertEqual(result, true)
  }
//  * Incorrect “Number” move.
  func testIfNumberMoveisWrong() {
    game.score = 2
    let response = game.play(move: Move.number)
    let result = response.right
    XCTAssertEqual(result, false)
  }
  
  func testIfMoveWrongScoreNotIncremented() {
    game.score = 1
    _ = game.play(move: Move.Fizz)
    XCTAssertEqual(game.score, 1)
  }
  
  func testPlayShouldReturnIfMoveRight() {
    let response = game.play(move: Move.number)
    XCTAssertNotNil(response.right)
  }
  
  func testPlayShouldReturnNewScore() {
    let response = game.play(move: Move.number)
    XCTAssertNotNil(response.score)
  }
  
  
}
