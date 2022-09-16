//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductsView: View {
  
  var products: [Product] = [
    Product(name: "Trouser", size: "S", color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: "XS", color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: "M", color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: "XL", color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Jacket", size: "XXS", color: "Black", description: "100% Cotton"),
    Product(name: "Coat", size: "L", color: "White", description: "100% Jersey Cotton"),
  ]
  
  var body: some View {
    NavigationView {
      List {
        ForEach(products) { product in
        //  NavigationLink(destination: ProductDetailsView())
          HStack(alignment: .firstTextBaseline) {
            Text(product.name)
              .font(.largeTitle)
              .bold()
              .padding()
            
            Spacer()
            
            Text("Size: \(product.size)")
              .font(.headline)
              .bold()
              .padding()
          }
        }
      }
      .navigationTitle("Products")
    }
  }
  struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
      ProductsView()
    }
  }
}
