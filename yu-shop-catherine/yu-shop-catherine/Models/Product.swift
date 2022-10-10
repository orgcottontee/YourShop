//
//  Product.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/28/22.
//

import Foundation
import SwiftUI

public struct Product: Codable, Identifiable {
  public let id: Int
  public let title: String
  public let price: Double
  public let description, category: String
  public let image: String
  
  enum CodingKeys: String, CodingKey {
    case id
    case title
    case price
    case description = "description"
    case category
    case image
  }
}

/// Former Product Object
//struct Product: Identifiable {
//  let id = UUID()
//  let name: String
//  let size: String
//  let image: String
//  let price: Int
//  let description: String
//}
//
//var productList = [
//  Product(name: "Acacia Trouser", size: "XS", image: "Trouser", price: 300, description: "Double front pleats"),
//  Product(name: "Baobab Tshirt", size: "S", image: "Tshirt", price: 100, description: "100% Double-layer Jersey Cotton"),
//  Product(name: "Banyan Shorts", size: "M", image: "Shorts", price: 200, description: "Raw Denim, Made in Japan"),
//  Product(name: "Elder Hoodie", size: "L", image: "Hoodie", price: 180, description: "100% French Terry Cotton"),
//  Product(name: "Hawthorn Jacket", size: "XL", image: "Jacket", price: 280, description: "Waterproof Waxed Canvas"),
//  Product(name: "Cypress Coat", size: "M", image: "Coat", price: 400, description: "Water repellent with Cotton-Nylon Blend"),
//  Product(name: "Elm Blazer", size: "L" , image: "Blazer", price: 330, description: "Go-to black blazer. Dress up or dress down"),
//  Product(name: "Dogwood Puffer", size: "XXL", image: "Puffer", price: 500, description: "Cozy 700-down Jacket"),
//  Product(name: "Linden Jumper", size: "S", image: "Jumper", price: 120, description: "Hand Knit Ecru 100% Cotton "),
//  Product(name: "Lilac Shirt", size: "XS", image: "Buttondown", price: 99, description: "Button up or button down?")
//]
