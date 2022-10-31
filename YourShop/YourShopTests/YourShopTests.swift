//
//  YourShopTests.swift
//  YourShopTests
//
//  Created by adobada on 10/24/22.
//

import XCTest
@testable import YourShop

final class YourShopTests: XCTestCase {
  
  override func setUpWithError() throws {
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDownWithError() throws {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_AddToBag() throws {
    // Given I have an empty Bag
    let bag = Bag()
    XCTAssertTrue(bag.products.isEmpty)
    XCTAssertEqual(bag.total, 0.0)
    // When I add a product to the Bag
    bag.addToBag(product: Product.example)
    // Then the Bag should contain a product and the total should update
    XCTAssertEqual(bag.products.count, 1)
    XCTAssertEqual(bag.products[0].id, Product.example.id)
    XCTAssertEqual(bag.total, 109.95)
  }
  
  func test_RemoveFromBag() throws {
    // Given I have one product in my Bag
    let bag = Bag()
    bag.addToBag(product: Product.example)
    XCTAssertEqual(bag.products.count, 1)
    XCTAssertNotEqual(bag.total, 0)
    // When I remove the product from the Bag
    bag.removeFromBag(product: Product.example)
    // Then the Bag should be empty and the total should equal zero
    XCTAssertTrue(bag.products.isEmpty)
    XCTAssertEqual(bag.total, 0.0)
  }
  
  func test_summerDiscount() throws {
    // Given I have a sale
    let item = Item(price: 100.0, discountType: .summerSale)
    // When I have a price
    XCTAssertEqual(item.currentDiscountedAmount, 80.0)
    // Then the total after discount should be updated
  }
  
  func test_christmasDiscount() throws {
    let item = Item(price: 100.0, discountType: .christmasSale)
    XCTAssertEqual(item.currentDiscountedAmount, 50.0)
  }
  
  func test_springDiscount() throws {
    let item = Item(price: 100.0, discountType: .springSale)
    XCTAssertEqual(item.currentDiscountedAmount, 20.0)

  }
}
