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
      ZStack {
        Color("BackgroundColor").edgesIgnoringSafeArea(.all)
        List {
          ForEach(bag.products) { product in
            HStack(alignment: .center) {
              Text(product.title)
                .font(.title)
                .bold()
                .padding()
              
              Spacer()
              
              Text(String(product.price))
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
}

struct Cart_Previews: PreviewProvider {
  static var previews: some View {
    CartView()
      .environmentObject(Bag())
  }
}
