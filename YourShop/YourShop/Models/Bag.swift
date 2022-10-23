//
//  Bag.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/18/22.
//

import Foundation

class Bag: ObservableObject {
  
  @Published var products = [Product]()
  @Published var total: Double = 0
  
//  @Published private(set) var products: [Product] = []
//  @Published private(set) var total: Double = 0
  
  func addToBag(product: Product) {
    products.append(product)
    total += product.price
  }
  
  func removeFromBag(product: Product) {
    products = products.filter { $0.id != product.id }
    total -= product.price
  }
}
