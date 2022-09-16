//
//  Product.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/28/22.
//

import Foundation

struct Product: Identifiable {
  let id = UUID()
  let name: String
  let size: String
  let color: String
  let description: String?
}
