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
      Text(product.title)
        .kerning(4)
        .multilineTextAlignment(.center)
        .font(.subheadline)
        .padding()
      AsyncImage(url: URL(string: product.image)) { image in
        image.resizable()
          .scaledToFit()
      } placeholder: {
        LoadingAPIImageView()
      }
      .frame(width: 180, height: 180)
      
      Text(product.description)
        .kerning(2)
        .font(.caption)
        .padding()
      
      HStack {
        Text("$ \(String(format: "%.1f", product.price))")
          .kerning(2)
          .font(.title2)
          .multilineTextAlignment(.center)
          .padding()
        
        Button {
          print("You've added \(product.title) to your bag!")
          bag.addToBag(product: product)
        } label: {
          Image(systemName: "plus")
        }
      }
    }
  }
}

struct ProductDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ProductDetailView(product: Product.example)
      .environmentObject(Bag())
    
  }
}
