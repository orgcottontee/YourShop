//
//  Cart.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct BagView: View {
  
  @EnvironmentObject var bag: Bag
  // var products: Product
  
  var body: some View {
    
    NavigationView {
      ScrollView {
        if bag.products.count > 0 {
          ForEach(bag.products, id: \.id) { product in
            BagListView(product: product)
          }
          VStack {
            HStack {
              Text("Your cart total is")
              Spacer()
              Text("$\(bag.total, specifier: "%.2f")")
      
                .bold()
            }
            .padding()
          }
          Spacer()
        } else {
          Text("Your bag is empty!")
            .kerning(5)
            .font(.title)
        }
      }
      .padding(.top)
      .navigationTitle("My Shopping Cart")
    }
  }
}

struct Cart_Previews: PreviewProvider {
  static var previews: some View {
    BagView()
      .environmentObject(Bag())
  }
}
