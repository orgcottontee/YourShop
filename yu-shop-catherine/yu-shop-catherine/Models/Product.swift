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
  let image: String
  let price: Int
  let description: String
}

var productList = [
  Product(name: "Trouser", size: "XS", image: "Trouser", price: 300, description: "Double front pleats"),
  Product(name: "T-shirt", size: "S", image: "Tshirt", price: 100, description: "100% Double-layer Jersey Cotton"),
  Product(name: "Shorts", size: "M", image: "Shorts", price: 200, description: "Raw Denim, Made in Japan"),
  Product(name: "Hoodie", size: "L", image: "Hoodie", price: 180, description: "100% French Terry Cotton"),
  Product(name: "Jacket", size: "XL", image: "Jacket", price: 280, description: "Waterproof Waxed Canvas"),
  Product(name: "Coat", size: "M", image: "Coat", price: 400, description: "Water repellent with Cotton-Nylon Blend"),
  Product(name: "Blazer", size: "L" , image: "Blazer", price: 330, description: "Go-to black blazer. Dress up or dress down"),
  Product(name: "Puffer", size: "XXL", image: "Puffer", price: 500, description: "Cozy 700-down Jacket"),
  Product(name: "Jumper", size: "S", image: "Jumper", price: 120, description: "Hand Knit Ecru 100% Cotton "),
  Product(name: "Button Down", size: "XS", image: "Buttondown", price: 99, description: "Button up or button down?")
]
