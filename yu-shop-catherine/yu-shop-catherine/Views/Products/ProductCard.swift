//
//  ProductCard.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/22/22.
//

import SwiftUI

struct ProductCard: View {
//  NavigationLink("Product", destination: ProductDetailView(product: product))
  var product: Product
  
    var body: some View {
      ZStack(alignment: .bottom) {
        Image(product.image)
          .resizable()
          .frame(width: 180)
          .cornerRadius(4)
          .scaledToFit()
          
        
        VStack(alignment: .leading) {
          Text(product.name)
            .bold()
        }
        .padding(10)
        .frame(alignment: .leading)
        .frame(width: 180)
        .cornerRadius(4)
        .background(.ultraThinMaterial)
        
      }
      .frame(width: 180, height: 250)
      .shadow(radius: 10)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
    }
}
