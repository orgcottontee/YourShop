//
//  StoreProduct.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/15/22.
//

import Combine
import Foundation

class StoreProduct: ObservableObject {
  let StoreProductURL = URL(fileURLWithPath: "Products",
                            relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("plist")
  
  private func savePListProducts() {
    
  }
}
