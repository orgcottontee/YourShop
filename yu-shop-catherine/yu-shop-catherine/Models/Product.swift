//
//  Product.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/28/22.
//

import Foundation


// Week02 Assignment 1
func toRemoveErrors() {
  struct Product {
    // Properties
    let name: String
    let size: Int
    let color: String
    // Week02 Assignment 3
    let description: String?
  }
  
  // Week02 Assignment 2: Collection
  var myProductList = [Product]()
  
  // Week02 Assignment 4
  
  let product1 = Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
  let product2 = Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
  let product3 = Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
  let product4 = Product(name: "Mules", size: 38, color: "Walnut", description: nil)
  let product5 = Product(name: "Hat", size: 2, color: "Forest Green", description: nil)
  let product6 = Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")
  
  // Week02 Assignment 5
  func addProduct(product: Product) {
    myProductList.append(product)
  }
  
  addProduct(product: product1)
  addProduct(product: product2)
  addProduct(product: product3)
  addProduct(product: product4)
  addProduct(product: product5)
  addProduct(product: product6)
  
  // Week02 Assignment 6
  func printElements(products: [Product]) {
    for product in products {
      if product.description != nil {
        print(product)
      }
    }
  }
  
  printElements(products: myProductList)
  
  // Week02 Above & Beyond
  var myShoeList = [Product]()

  let shoe1 = Product(name: "Sneaker", size: 40, color: "Indigo", description: nil)
  let shoe2 = Product(name: "Loafers", size: 38, color: "Black", description: nil)
  let shoe3 = Product(name: "Mules", size: 42, color: "White", description: "100% Leather")

  func addShoe(product: Product) {
    myShoeList.append(product)
  }

  addShoe(product: shoe1)
  addShoe(product: shoe2)
  addShoe(product: shoe3)

  printElements(products: myShoeList)
  
}


