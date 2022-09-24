//
//  Category.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import Foundation

//struct Category {
//
//  struct SubCategory {
//    let categoryName: String
//    let name: String
//  }
//
//  let id = UUID()
//  let name: String
//  let image: String
//  let subCategories: [SubCategory]
//}
//
//extension Category {
//
//  static let categoryList = [
//    ( name: "Bottoms",
//      image: "Bottoms",
//      subCategories: [
//        "Pants",
//        "Jeans",
//        "Shorts",
//      ]),
//    ( name: "Tops",
//      image: "Tops",
//      subCategories: [
//        "Tshirt",
//        "Sweater",
//        "Outerwear",
//      ]),
//    ( name: "Accessories",
//      image: "Accessories",
//      subCategories: [
//        "Socks",
//        "Jewelry",
//        "Hats",
//      ]),
//    ( name: "Footwear",
//      image: "Footwear",
//      subCategories: [
//        "Mules",
//        "Sneakerss",
//        "Boots",
//      ]),
//
//  ]
//}

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

//var categoryList = Category.sampleCategory
//var firstCategory = categoryList.first
//var firstSubCategory = firstCategory?.subCategories.first
//var subCategoryName1 = categoryList.first?.subCategories.first?.name
//var subCategoryName2 = firstCategory?.subCategories.first?.name
//var subCategoryName3 = firstSubCategory?.name








