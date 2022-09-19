//
//  CategoryCard.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/18/22.
//

import SwiftUI

struct CategoryCard: View {
  
  var product: Product
  
    var body: some View {
      
      ZStack(alignment: .bottom) {
        Image(product.image)
          .resizable()
          .cornerRadius(4)
          .frame(width: 180)
          .scaledToFit()
          
        
        
        VStack(alignment: .leading) {
          Text(product.name)
            .bold()
        }
        .padding(10)
        .frame(width: 180, alignment: .leading)
        .background(.ultraThinMaterial)
        .cornerRadius(4)
      }
      .frame(width: 180, height: 250)
      .shadow(radius: 3)
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
      CategoryCard(product: productList[0])
    }
}
