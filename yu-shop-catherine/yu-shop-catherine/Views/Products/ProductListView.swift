//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductListView: View {
  
//var product: Product
  
  var body: some View {
    
    NavigationView {
      List {
        ForEach(productList) { product in
          NavigationLink(destination: ProductDetailView(product: product)) {
            HStack(alignment: .center) {
              Text(product.name)
                .font(.title)
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
      }
      .navigationTitle("Products")
    }
  }
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView()
  }
}
