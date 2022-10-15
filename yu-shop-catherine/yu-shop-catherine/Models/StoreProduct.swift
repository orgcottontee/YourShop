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
  
  let storeProductURL = URL(fileURLWithPath: "Products",
                            relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("plist")
  
  private func savePListProducts() {
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .binary
    
    do {
      let productsData = try encoder.encode(products)
      
      try productsData.write(to: storeProductURL, options: .atomicWrite)
    } catch let error {
      print(error)
    }
  }
  
  
}
