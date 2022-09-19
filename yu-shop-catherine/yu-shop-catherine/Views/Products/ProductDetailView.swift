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
    NavigationView {
      HStack {
        //GeometryReader { proxy in
          HStack {
            VStack {
              Image(product.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                //.frame(width: proxy.size.width * 0.45)
                .padding()
              
              Button {
                print("You've added \(product.name) to your bag!")
                bag.addToBag(product: product)
              } label: {
                Image(systemName: "plus")
                  .font(.headline)
                  .buttonBorderShape(.capsule)
                  .foregroundColor(.white)
                  .background(.black)
              }
            }
            
            VStack(alignment: .center) {
              Text(product.name)
                .font(.largeTitle)
                .foregroundColor( .init(white: 0.4) )
                .padding(.horizontal, 10)
                .background( Color(white: 0.9) )
                .cornerRadius(20)
                .padding(.bottom)
              
              Text(product.description)
                .layoutPriority(1)
                .multilineTextAlignment(.center)
                .padding(.bottom)
              
              
              Text("Size: \(product.size)")
                .font(.title2)
                .multilineTextAlignment(.center)
              
              Text("$\(product.price)")
                .font(.title2)
                .multilineTextAlignment(.center)
            }
            .padding()
          }
          .navigationTitle("Disocver more...")
        }
      }
    }
  }
//}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(product: productList[2])
  }
}
