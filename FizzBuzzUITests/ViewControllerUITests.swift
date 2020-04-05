//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by ludwig vantours on 05/04/2020.
//  Copyright © 2020 LudwigVaan. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class./Users/ludwig/Documents/Swift/FizzBuzz/FizzBuzzUITests/ViewControllerUITests.swift
    }

    func testExample() throws {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
  

  
  func testTapNumberButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]

    
    numberButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "1")
    
  }
  
  func testTapNumberButtonTwiceIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    
    
    numberButton.tap()
    numberButton.tap()
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "2")
    
  }
  
  func testTapFizzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
  
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "3")
    
  }
  
  func testTapBuzzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    let buzzButton = app.buttons["buzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "5")
    
  }
  
  func testTapFizzBuzzButtonIncrementsScore() {
    let app = XCUIApplication()
    let numberButton = app.buttons["numberButton"]
    let fizzButton = app.buttons["fizzButton"]
    let buzzButton = app.buttons["buzzButton"]
    let fizzBuzzButton = app.buttons["fizzBuzzButton"]
    
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    buzzButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
    fizzButton.tap()
    buzzButton.tap()
    numberButton.tap()
    fizzButton.tap()
    numberButton.tap()
    numberButton.tap()
    fizzBuzzButton.tap()
    
    
    let newScore = numberButton.label
    XCTAssertEqual(newScore, "15")
    
  }
  
  
  

}
