// WEEK 2 ASSIGNMENTS:

// Assignment 1
struct Product {
  let name: String
  let size: Int
  let color: String
  let description: String? // Assignment 3
}

// Assignment 2: Collection
var myProductList = [Product]()

// Assignment 4
let product1 = Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
let product2 = Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
let product3 = Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
let product4 = Product(name: "Tank Top", size: 4, color: "Walnut", description: nil)
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

// Above & Beyond
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

// WEEK 3 ASSIGNMENTS

// Assignment 1: Function
/*
 func calculateTotalAfterDiscount(totalAmount: Double, discountPercentage: Double) -> Double {
 let discountedAmount = (totalAmount * discountPercentage)
 print(discountedAmount)
 let totalAmountAfterDiscount = totalAmount - discountedAmount
 print(totalAmountAfterDiscount)
 return totalAmountAfterDiscount
 }
 calculateTotalAfterDiscount(totalAmount: 200.0, discountPercentage: 0.50)
 */

import Darwin

// Assignment 2: Function with default value

func calculateTotalAfterDiscount(totalAmount: Double, discountPercentage: Double = 0.50) -> Double {
  let discountedAmount = (totalAmount * discountPercentage)
  let totalAmountAfterDiscount = totalAmount - discountedAmount
  return totalAmountAfterDiscount
}

calculateTotalAfterDiscount(totalAmount: 200.0)

// Assignment 3: typealias

// typealias Discount = (_ totalAmount: Double, _ discountType: String) -> Double

func discountPercentage(from discountType: String) -> Double {
  let discountPercentage: Double
  if discountType == "Christmas Sale" {
    discountPercentage = 0.5
  } else if discountType == "Spring Sale" {
    discountPercentage = 0.2
  } else if discountType == "Summer Sale" {
    discountPercentage = 0.8
  } else {
    discountPercentage = 0.0
  }
  return discountPercentage
}

func calculateTotalAfterDiscount(totalAmount: Double, discountType: String) -> Double {
  let discountPercentage = discountPercentage(from: discountType)
  return calculateTotalAfterDiscount(totalAmount: totalAmount, discountPercentage: discountPercentage)
}

//func printDiscount(discountDetails: Discount, totalAmount: Double, discountType: String) {
//  let totalAmountAfterDiscount = discountDetails(totalAmount, discountType)
//  print(totalAmountAfterDiscount)
//}
//print("Assignment 3:")
//printDiscount(discountDetails: calculateTotalAfterDiscount, totalAmount: 200.0, discountType: "Summer Sale")
//


// Assignment 4: Closure

let calculateDiscount = { (totalAmount: Double, discountType: String) in
  let discountPercentage = discountPercentage(from: discountType)
  let totalAmountAfterDiscount = calculateTotalAfterDiscount(totalAmount: totalAmount, discountPercentage: discountPercentage)
  print(totalAmountAfterDiscount)
}
print("Assignment 4:")
calculateDiscount(500.0, "Spring Sale")



// Assignment 5: Map

var itemPrices = [300.0, 150.0, 100.0]

let increasedPrices = itemPrices.map { (price) -> Double in
  price * 1.5
}
print("Assignment 5:")
print(increasedPrices)

// Assignment 6: Sorted

let discountPercentagesByDiscountType: [String: Double] = ["Spring Sale": 0.2, "Summer Sale": 0.8, "Christmas Sale": 0.5]

let sortedDiscountPercentages = discountPercentagesByDiscountType.sorted {
  $0.value > $1.value
  
}
print("Assignment 6:")
print(sortedDiscountPercentages)

// Assignment 7: Enums & Switch Cases

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

func printDiscount(discountType: DiscountType) {
  switch discountType {
  case .christmasSale:
    print("The discount percentage is 50%")
  case .springSale:
    print("The discount percentage is 20%")
  case .summerSale:
    print("The discount percentage is 80%")
  }
}
print("Assignment 7:")
printDiscount(discountType: .summerSale)
printDiscount(discountType: .christmasSale)
printDiscount(discountType: .springSale)

// Assignment 8: Computer Property

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
  // Assignment 10: Method
  func totalAmountAfterApplyingDiscount() -> Double {
    let totalAmountAfterDiscount = price - currentDiscountedAmount
    return totalAmountAfterDiscount
  }
  
}
print("Assignment 8:")
var item = Item(price: 400.0, discountType: .springSale)
print(item.currentDiscountedAmount)
print("Assignment 9:")
print(item.maximumDiscount)
print("Assignment 10:")
print(item.totalAmountAfterApplyingDiscount())

// Assignment 11: Protocol

protocol Discount {
  var discountType: DiscountType { get }
  var discountPercentage: Double { get }
  
  func calculateDiscountAmount() -> Double
}

class DiscountAmount: Discount {
  let price: Double
  let discountType: DiscountType
  
  var discountPercentage: Double {
    let discountPercentage: Double
    switch discountType {
    case .summerSale:
      discountPercentage = 0.80
    case .christmasSale:
      discountPercentage = 0.50
    case .springSale:
      discountPercentage = 0.20
    }
    return discountPercentage
  }
  
  init(discountType: DiscountType, price: Double) {
    self.price = price
    self.discountType = discountType
  }
  
  func calculateDiscountAmount() -> Double {
    let discountedAmount = (price * discountPercentage)
    return discountedAmount
  }
}

let discountedAmount = DiscountAmount(discountType: .springSale, price: 700.0)
print("Assignment 11:")
print(discountedAmount.discountPercentage)
print(discountedAmount.price)
print(discountedAmount.calculateDiscountAmount())


// Assignment 12: Extension

extension DiscountAmount {
  func roundTotalDiscountedAmount() -> Int {
    let discountAmount = calculateDiscountAmount()
    return Int(round(discountAmount))
  }
}
print("Assignment 12:")
let discountAmount2 = DiscountAmount(discountType: .springSale, price: 209.0)
print(discountAmount2.calculateDiscountAmount())
print(discountAmount2.roundTotalDiscountedAmount())
