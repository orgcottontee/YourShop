//
//  Category.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import Foundation

struct Category: Identifiable {
  let id = UUID()
  struct SubCategory {
    let categoryName: String
    let name: String
  }
  
  let name: String
  let subCategories: [SubCategory]
}

extension Category {
  static let categoryList = [
    (name: "Bottoms", SubCategory: [
      "Pants",
      "Trousers",
      "Skirt",
      "Shorts",
    ]),
    (name: "Tops", SubCategory: [
      "Tshirt",
      "Puffer",
      "Hoodie",
      "Jacket"
    ]),
    (name: "Accessories", SubCategory: [
      "Necklace",
      "Earrings",
      "Rings",
      "Socks"
    ]),
    (name: "Footwear", SubCategory: [
      "Sneakers",
      "Mules",
      "Slides",
      "Boots"
    ]),
  ]
}

