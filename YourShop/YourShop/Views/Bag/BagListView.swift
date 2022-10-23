//
//  BagListView.swift
//  YourShop
//
//  Created by adobada on 10/23/22.
//

import SwiftUI

struct BagListView: View {
  
  @EnvironmentObject var bag: Bag
  var product: Product
  
  var body: some View {
    HStack(spacing: 20) {
      AsyncImage(url: URL(string: product.image)) { image in
        image.resizable()
          .scaledToFit()
      } placeholder: {
        LoadingAPIImageView()
      }
      .frame(width: 100, height: 100)
      
      VStack(alignment: .leading, spacing: 10) {
        Text(product.title)
          .bold()
        
        Text("$\(product.price, specifier: "%.2f")")
      }
      
      Spacer()
      
      Image(systemName: "trash")
        .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
        .onTapGesture {
          bag.removeFromBag(product: product)
        }
    }
    .padding(.horizontal)
    .frame(maxWidth: .infinity, alignment: .leading)
  }
}

struct BagListView_Previews: PreviewProvider {
  static var previews: some View {
    BagListView(product: Product.example)
  }
}
