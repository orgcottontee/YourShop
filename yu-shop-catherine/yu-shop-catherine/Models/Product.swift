//
//  Product.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/28/22.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
  let id: Int
  let title: String
  let price: Double
  let description: String
  let category: String
  let image: String
}
