//
//  Cart.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct CartView: View {
  
  @EnvironmentObject var bag: Bag
  
  var body: some View {
    NavigationView {
      List {
        ForEach(bag.products) { product in
          HStack(alignment: .center) {
            Text(product.name)
              .font(.title)
              .bold()
              .padding()
            
            Spacer()
            
            Text("Size: \(product.size)")
              .font(.headline)
              .bold()
              .padding()
          }
        }
        .navigationTitle("Your Shopping bag")
      }
    }
  }
}

struct Cart_Previews: PreviewProvider {
  static var previews: some View {
    CartView()
      .environmentObject(Bag())
  }
}
