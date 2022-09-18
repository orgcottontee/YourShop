//
//  Cart.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct CartView: View {
  
    var body: some View {
      NavigationView {
        VStack {
          Text("Customers can checkout on this page")
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
