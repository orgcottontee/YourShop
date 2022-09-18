//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductList: View {
  
  var product: Product
  
  var body: some View {
    
    //    ZStack(alignment: .bottom) {
    //      Image(product.image)
    //        .resizable()
    //        .cornerRadius(20)
    //        .frame(width: 180)
    //        .scaledToFit()
    //
    //      VStack(alignment: .leading) {
    //        Text(product.name)
    //          .bold()
    //        Text("$\(product.price)")
    //          .font(.caption)
    //      }
    //      .padding(10)
    //      .frame(width: 180, alignment: .leading)
    //      .background(.ultraThinMaterial)
    //      .cornerRadius(20)
    //    }
    //    .frame(width: 180, height: 250)
    //    .shadow(radius: 3)
    //  }
    
    //  var products: [Product] = [
    //    Product(name: "Trouser", size: "S", color: "Black", description: "100% Cotton"),
    //    Product(name: "T-Shirt", size: "XS", color: "White", description: "100% Jersey Cotton"),
    //    Product(name: "Shorts", size: "M", color: "Indigo", description: "Denim. Made in Japan"),
    //    Product(name: "Hoodie", size: "XL", color: "Black", description: "100% French Terry Cotton"),
    //    Product(name: "Jacket", size: "XXS", color: "Black", description: "100% Cotton"),
    //    Product(name: "Coat", size: "L", color: "White", description: "100% Jersey Cotton"),
    //  ]
    
    
    NavigationView {
      List {
        ForEach(productList) { product in
//          NavigationLink(destination: ProductDetailView(, label: product: product))
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
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductList(product: productList[0])
  }
}
