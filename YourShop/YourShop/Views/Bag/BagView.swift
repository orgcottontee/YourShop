//
//  Cart.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct BagView: View {
  
  @EnvironmentObject var bag: Bag
  
  var body: some View {
    
    NavigationView {
      List {
        ForEach(bag.products) { product in
          HStack(alignment: .center) {
            Text(product.title)
            
            Spacer()
            
            Text("$\(product.price)")
              .font(.headline)
              .bold()
              .padding()
          }
        }
        Section {
          NavigationLink(destination:
                          Text("Check out")) {
            Text("Place Order")
          }
        }
      }
      .navigationTitle("Your Shopping Bag")
      .listStyle(InsetGroupedListStyle())
    }
  }
}

struct Cart_Previews: PreviewProvider {
  static var previews: some View {
    BagView()
      .environmentObject(Bag())
  }
}
