//
//  ProductCard.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/22/22.
//

import SwiftUI

struct ProductCard: View {
  
  var product: Product
  
  var body: some View {
    
    VStack {
      AsyncImage(url: URL(string: product.image)) { image in
        image.resizable()
          .scaledToFit()
      } placeholder: {
        LoadingAPIImageView()
      }

      VStack(alignment: .leading) {
        Text("$\(product.price, specifier: "%.2f")")
      }
      .padding()
      .frame(width: 150)
    }
    .frame(width: 150, height: 150)
  }
}

struct ProductCard_Previews: PreviewProvider {
  static var previews: some View {
    ProductCard(product: Product.example)
  }
}
