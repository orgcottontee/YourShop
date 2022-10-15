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
    
    ZStack(alignment: .bottom) {
      AsyncImage(url: URL(string: product.image)) { image in
        image.resizable()
          .scaledToFit()
      } placeholder: {
        LoadingAPIImageView()
      }
      .frame(width: 180, height: 180)
      
      VStack(alignment: .leading) {
        Text("$ \(String(format: "%.1f", product.price))")
          .bold()
      }
      .padding(10)
      .frame(alignment: .leading)
      .frame(width: 180)
      .cornerRadius(4)
      .background(.ultraThinMaterial)
      
    }
    .frame(width: 180, height: 180)
    .shadow(radius: 5)
  }
}

//struct ProductCard_Previews: PreviewProvider {
//  static var previews: some View {
//    ProductCard(product: productList[0])
//  }
//}
