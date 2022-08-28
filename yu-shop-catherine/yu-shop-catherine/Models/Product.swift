//
//  Product.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/28/22.
//

import Foundation

// Assignment 1

struct Product {
  // Properties
  let name: String
  let size: Int
  let color: String
  // Assignment 3
  let description: String?
}

// Assignment 2: Collection
var myProductList = [Product]()

// Assignment 4

let product1 = Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
let product2 = Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
let product3 = Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
let product4 = Product(name: "Mules", size: 38, color: "Walnut", description: nil)
let product5 = Product(name: "Hat", size: 2, color: "Forest Green", description: nil)
let product6 = Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")

// Assignment 5
func addProduct(product: Product) {
  myProductList.append(product)
}

addProduct(product: product1)
addProduct(product: product2)
addProduct(product: product3)
addProduct(product: product4)
addProduct(product: product5)
addProduct(product: product6)

// Assignment 6
func printElements(products: [Product]) {
  for product in products {
    if product.description != nil {
      print(product)
    }
  }
}

printElements(products: myProductList)

