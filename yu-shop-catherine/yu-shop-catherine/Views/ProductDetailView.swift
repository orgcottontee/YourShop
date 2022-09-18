//
//  ProductDetailView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct ProductDetailView: View {
  
  var productDetail: Product
  
  var body: some View {
    
    HStack(alignment: .top) {
      VStack {
        Image(productDetail.image)
          .resizable()
          .scaledToFit()
          .cornerRadius(20)
      }
      .padding()
      
      VStack(alignment: .center) {
        Text(productDetail.name)
          .font(.largeTitle)
          .foregroundColor( .init(white: 0.4) )
          .padding(.horizontal, 10)
          .background( Color(white: 0.9) )
          .cornerRadius(20)
    
        Text(productDetail.description)
          .font(.title3)
          .multilineTextAlignment(.center)
          .padding()
      
        Text("Size: \(productDetail.size)")
          .font(.title2)
          .multilineTextAlignment(.center)
          .padding()
        
        Text("$\(productDetail.price)")
          .font(.title2)
          .multilineTextAlignment(.center)
          .padding()
        
      }
      .padding()
    }
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(productDetail: productList[0])
  }
}
