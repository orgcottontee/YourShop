//
//  Category.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import Foundation

/// Category Struct
struct Category: Identifiable {
  
  /// Properties
  let id = UUID()
  let name: String
  let image: String
  
  struct SubCategory {
    let categoryName: String
    let name: String
  }
  
  let subCategories: [SubCategory]
}

extension Category {
  
  static var sampleCategory: [Category] = {[
    
    Category(name: "Bottoms", image: "Bottoms", subCategories: [
      Category.SubCategory(categoryName: "Bottoms", name: "Pants"),
      Category.SubCategory(categoryName: "Bottoms", name: "Jeans"),
      Category.SubCategory(categoryName: "Bottoms", name: "Shorts"),
    ]),
    
    Category(name: "Tops", image: "Tops", subCategories: [
      Category.SubCategory(categoryName: "Tops", name: "T-shirt"),
      Category.SubCategory(categoryName: "Tops", name: "Sweater"),
      Category.SubCategory(categoryName: "Tops", name: "Outerwear"),
    ]),
    
    Category(name: "Accessories", image: "Accessories", subCategories: [
      Category.SubCategory(categoryName: "Accessories", name: "Socks"),
      Category.SubCategory(categoryName: "Accessories", name: "Jewelry"),
      Category.SubCategory(categoryName: "Accessories", name: "Hats"),
    ]),
    
    Category(name: "Footwear", image: "Footwear", subCategories: [
      Category.SubCategory(categoryName: "Footwear", name: "Mules"),
      Category.SubCategory(categoryName: "Footwear", name: "Boots"),
      Category.SubCategory(categoryName: "Footwear", name: "Sneakers"),
    ]),
  ]}()
}
