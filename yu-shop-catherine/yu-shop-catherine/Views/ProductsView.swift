//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

// Week04 Assignment SwiftUI

struct ProductsView: View {
  
  var products: [Product] = [
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
  ]
  
  var body: some View {
      ScrollView(.vertical) {
        ForEach(products) { item in
          HStack(alignment: .firstTextBaseline) {
            Text(item.name)
              .font(.largeTitle)
              .bold()
              .padding()
            
            Spacer()
            
            Text("Size: \(item.size)")
              .font(.headline)
              .bold()
              .padding()
          }
        }
      }
      .padding()
  }
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductsView()
  }
}
