//
//  ProductsDetailView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/16/22.
//

import SwiftUI

struct ProductsDetailView: View {
  
  var productDetails: [Product] = [
    Product(name: "Trouser", size: "S", color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: "XS", color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: "M", color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: "XL", color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Jacket", size: "XXS", color: "Black", description: "100% Cotton"),
    Product(name: "Coat", size: "L", color: "White", description: "100% Jersey Cotton"),
  ]
    
  
    var body: some View {
      HStack {
        VStack {
          Image("")
        }
      }
    }
}

struct ProductsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsDetailView()
    }
}
