//
//  Bag.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/18/22.
//

import Foundation

/// Model: Data Container. Here you can see an Observer design pattern too.
class Bag: ObservableObject {
  ///ViewModel: An `ObservableObject` with logic that allows the `View` to observe changes of the state
  @Published private(set) var products: [Product] = []
  @Published private(set) var total: Int = 0
  ///Methods
  func addToBag(product: Product) {
    products.append(product)
    total += product.price
  }
  
  func removeFromBag(product: Product) {
    products = products.filter { $0.id != product.id }
    total -= product.price
  }
}

/// MVVM:
///   - My Model and ViewModel lives here in my Bag file
///   - This Model & ViewModel is then displayed in TabBar, ProductDetailView, and CartView
/// Observer:
///   - The Observer design pattern also lives here in my Bag file. The OberservableObject or Publisher sends the updates
///   - The Observer patten also lives in TabBar, ProductDetailView, and CartView. They are the subscribers or the ObserverObject, and receives updates.
