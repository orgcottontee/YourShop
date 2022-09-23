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
        Image(product.image)
          .resizable()
          .cornerRadius(4)
          .scaledToFit()
        
        VStack(alignment: .leading) {
          Text(product.name)
            .bold()
        }
        .padding(10)
        .frame(alignment: .leading)
        .cornerRadius(4)
      }
      .frame(width: 180, height: 250)
      .shadow(radius: 3)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[1])
    }
}
