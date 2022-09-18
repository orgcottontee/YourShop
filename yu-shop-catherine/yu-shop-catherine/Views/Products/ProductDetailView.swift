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
    NavigationView {
      GeometryReader { proxy in
        HStack {
          VStack {
            Image(productDetail.image)
              .resizable()
              .scaledToFit()
              .cornerRadius(20)
              .frame(width: proxy.size.width * 0.45)
              .padding()
          }
          
          VStack(alignment: .center) {
            Text(productDetail.name)
              .font(.largeTitle)
              .foregroundColor( .init(white: 0.4) )
              .padding(.horizontal, 10)
              .background( Color(white: 0.9) )
              .cornerRadius(20)
              .padding(.bottom)
            
            Text(productDetail.description)
              .layoutPriority(1)
              .multilineTextAlignment(.center)
              .padding(.bottom)
            
            
            Text("Size: \(productDetail.size)")
              .font(.title2)
              .multilineTextAlignment(.center)
            
            Text("$\(productDetail.price)")
              .font(.title2)
              .multilineTextAlignment(.center)
            
            Button {
              print("You've add \(productDetail.name) to your bag!")
            } label: {
              Image(systemName: "plus")
                .padding(10)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(50)
                .padding()
            }
            
          }
          .padding()
        }
        .navigationTitle("Disocver more...")
      }
    }
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(productDetail: productList[4])
  }
}
