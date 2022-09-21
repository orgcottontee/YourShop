//
//  Category.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import Foundation

struct Category: Identifiable {
  let id = UUID()
  let name: String
  
  struct SubCategory {
    let categoryName: String
    let name: String
  }
  
  let subCategories: [SubCategory]
}

extension Category {
  static var sampleCategory: [Category] = {
    
    var sampleCategoryData: [Category] = []
    
    let bottomsCategory = Category(name: "Bottoms", subCategories: [
      Category.SubCategory(categoryName: "Bottoms", name: "Pants"),
      Category.SubCategory(categoryName: "Bottoms", name: "Jeans"),
      Category.SubCategory(categoryName: "Bottoms", name: "Shorts"),
    ])

    let topsCategory = Category(name: "Tops", subCategories: [
      Category.SubCategory(categoryName: "Tops", name: "T-shirt"),
      Category.SubCategory(categoryName: "Tops", name: "Sweater"),
      Category.SubCategory(categoryName: "Tops", name: "Outerwear"),
    ])

    let accessoriesCategory = Category(name: "Accessories", subCategories: [
      Category.SubCategory(categoryName: "Accessories", name: "Socks"),
      Category.SubCategory(categoryName: "Accessories", name: "Jewelry"),
      Category.SubCategory(categoryName: "Accessories", name: "Hats"),
    ])

    let footwearCategory = Category(name: "Footwear", subCategories: [
      Category.SubCategory(categoryName: "Footwear", name: "Mules"),
      Category.SubCategory(categoryName: "Footwear", name: "Boots"),
      Category.SubCategory(categoryName: "Footwear", name: "Sneakers"),
    ])
    
    var categoryList = [bottomsCategory, topsCategory, accessoriesCategory, footwearCategory]
    
    sampleCategoryData.append(bottomsCategory)

    return sampleCategoryData
  }()
}


