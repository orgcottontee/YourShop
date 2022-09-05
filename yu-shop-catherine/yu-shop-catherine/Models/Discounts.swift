//
//  Discounts.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/5/22.
//

import Foundation

struct Item {
  let price: Double
  let discountType: DiscountType
  // Assignment 9: Lazy Property
  lazy var maximumDiscount = price
  var currentDiscountedAmount: Double {
    let discountPercentage: Double
    
    switch discountType {
    case .summerSale:
      discountPercentage = 0.80
    case .christmasSale:
      discountPercentage = 0.50
    case .springSale:
      discountPercentage = 0.20
    }
    
    let discountedAmount = (price * discountPercentage)
    return discountedAmount
  }
}


enum DiscountType {
  case summerSale
  case christmasSale
  case springSale
  
  var discountPercentage: Double {
    switch self {
    case .summerSale:
      return 0.80
    case .christmasSale:
      return 0.50
    case .springSale:
      return 0.20
    }
  }
}

