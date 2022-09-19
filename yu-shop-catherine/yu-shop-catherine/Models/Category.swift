//
//  Category.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import Foundation

struct Category {
  struct SubCategory {
    let categoryName: String
    let name: String
  }
  
  let name: String
  let subCategories: [SubCategory]
  
}
