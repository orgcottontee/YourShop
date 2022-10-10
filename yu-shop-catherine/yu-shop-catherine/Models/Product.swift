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
  
  enum CodingKeys: String, CodingKey {
    case id
    case title
    case price
    case description
    case category
    case image
  }
}
