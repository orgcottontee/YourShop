//
//  StoreProduct.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/15/22.
//

import Combine
import Foundation

class StoreProduct: ObservableObject {
  
  @Published var products: [Product] = [] {
    didSet {
      savePListProducts()
    }
  }
  
  let productsJSONURL = URL(fileURLWithPath: "Products",
                            relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("plist")
  
  init() {
    loadJSONProducts()
  }
  
  private func loadJSONProducts() {
    print(Bundle.main.bundleURL)
    print(FileManager.documentsDirectoryURL)
    guard let productsJSONURL = Bundle.main.url(forResource: "Products", withExtension: "json") else {
      return
    }
//    guard FileManager.default.fileExists(atPath: productsJSONURL.path) else {
//      return
//    }
    
    let decoder = JSONDecoder()
    
    do {
      let productsData = try Data(contentsOf: productsJSONURL)
      products = try decoder.decode([Product].self, from: productsData)
    } catch let error {
      print(error)
    }
  }
  
  private func savePListProducts() {
    print(Bundle.main.bundleURL)
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .binary
    
    do {
      let productsData = try encoder.encode(products)
      
      try productsData.write(to: productsJSONURL, options: .atomicWrite)
    } catch let error {
      print(error)
    }
  }
  
  
}
