//
//  YourShopUITests.swift
//  YourShopUITests
//
//  Created by adobada on 10/23/22.
//

import XCTest

final class YourShopUITests: XCTestCase {
  
  var app: XCUIApplication!
  
  override func setUpWithError() throws {
    app = XCUIApplication()
    app.launch()
    
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  func test_productsPage() throws {
    
    let tabBar = app.tabBars["Tab Bar"]
    let browseButton = tabBar.buttons["Browse"]
    browseButton.tap()
    let productsNavTitle = app.staticTexts["Products"]
    XCTAssert(productsNavTitle.waitForExistence(timeout: 0.5))
  }
}
