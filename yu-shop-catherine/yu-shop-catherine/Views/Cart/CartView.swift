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
      VStack {
        ForEach(bag.products) { product in
          Text(product.name)
        }
      }
      .navigationTitle("Your Shopping bag")
    }
  }
}

struct Cart_Previews: PreviewProvider {
  static var previews: some View {
    CartView()
      .environmentObject(Bag())
  }
}
