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
    
    VStack {
      AsyncImage(url: URL(string: product.image)) { image in
        image.resizable()
          .scaledToFit()
          //.shadow(color: .gray, radius: 20, x: 2, y: 2)
          
      } placeholder: {
        LoadingAPIImageView()
      }
      .frame(width: 180, height: 180)
      
      Button {
        print("You've added \(product.title) to your bag!")
        bag.addToBag(product: product)
      } label: {
        Image(systemName: "plus")
          .font(.headline)
          .padding()
          .foregroundColor(.white)
          .background(.black)
          .cornerRadius(50)
      }
      VStack(alignment: .center) {
        Text(product.title)
          .font(.headline)
          .foregroundColor( .init(white: 0.4) )
          .padding(10)
          .background( Color(white: 0.9) )
          .cornerRadius(2)
          .padding(.bottom)
        
        Text(product.description)
          .multilineTextAlignment(.center)
          .padding(.bottom)
        
        Text("$ \(String(format: "%.1f", product.price))")
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
    ProductDetailView(product: Product.example)
      .environmentObject(Bag())
  }
}
