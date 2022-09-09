//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI
import Foundation

// Week04 Assignment SwiftUI

struct ProductsView: View {
  
  @State var itemsForSale: [ItemsForSale] = []
  
  var body: some View {
    NavigationView() {
      ScrollView(.vertical) {
        ForEach(itemsForSale) { item in
          HStack(alignment: .firstTextBaseline) {
            Text(item.name)
              .font(.largeTitle)
              .bold()
              .padding()
            
            Spacer()
            
            Text("Size: \(item.size)")
              .font(.headline)
              .bold()
              .padding()
          }
        }
      }
      .navigationTitle("Collection")
      .padding()
      .onAppear {
        getItems()
      }
    }
    
  }
  func getItems() {
    let item1 = ItemsForSale(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
    let item2 = ItemsForSale(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
    let item3 = ItemsForSale(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
    let item4 = ItemsForSale(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")
    let item5 = ItemsForSale(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
    let item6 = ItemsForSale(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
    let item7 = ItemsForSale(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
    let item8 = ItemsForSale(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")
    let item9 = ItemsForSale(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
    let item10 = ItemsForSale(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
    let item11 = ItemsForSale(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
    let item12 = ItemsForSale(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")
    let item13 = ItemsForSale(name: "Pants", size: 3, color: "Black", description: "100% Cotton")
    let item14 = ItemsForSale(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton")
    let item15 = ItemsForSale(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan")
    let item16 = ItemsForSale(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton")
    
    itemsForSale.append(item1)
    itemsForSale.append(item2)
    itemsForSale.append(item3)
    itemsForSale.append(item4)
    itemsForSale.append(item5)
    itemsForSale.append(item6)
    itemsForSale.append(item7)
    itemsForSale.append(item8)
    itemsForSale.append(item9)
    itemsForSale.append(item10)
    itemsForSale.append(item11)
    itemsForSale.append(item12)
    itemsForSale.append(item13)
    itemsForSale.append(item14)
    itemsForSale.append(item15)
    itemsForSale.append(item16)
  }
}

struct ItemsForSale: Identifiable {
  let id = UUID()
  let name: String
  let size: Int
  let color: String
  let description: String
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductsView()
  }
}
