//
//  ProductDetailView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct ProductDetailView: View {
  
  @EnvironmentObject var bag: Bag
  var product: Product
  
  var body: some View {
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      HStack(alignment: .top) {
        VStack {
          Image(product.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(4)
            .padding()
          
          Button {
            print("You've added \(product.name) to your bag!")
            bag.addToBag(product: product)
          } label: {
            Image(systemName: "plus")
              .font(.headline)
              .padding()
              .foregroundColor(.white)
              .background(.black)
              .cornerRadius(50)
          }
        }
        
        VStack(alignment: .center) {
          Text(product.name)
            .font(.headline)
            .foregroundColor( .init(white: 0.4) )
            .padding(10)
            .background( Color(white: 0.9) )
            .cornerRadius(2)
            .padding(.bottom)
          
          Text(product.description)
            .multilineTextAlignment(.center)
            .padding(.bottom)
          
          Text("Size: \(product.size)")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding()
          
          Text("$\(product.price)")
            .font(.title2)
            .multilineTextAlignment(.center)
            .padding()
        }
        .padding()
      }
    }
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(product: productList[9])
  }
}
