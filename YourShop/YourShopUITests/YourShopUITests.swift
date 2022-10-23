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
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }
  
  func test_TabBar() throws {
    XCTAssertEqual(app.tabBars.buttons.count, 3)
  }
  
  func test_CartBadge() {
    XCUIApplication().scrollViews.otherElements.buttons["$168.00"].tap()

    
  }
  
  
  
}
