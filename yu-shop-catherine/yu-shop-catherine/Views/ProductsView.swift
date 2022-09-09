//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

// Week04 Assignment SwiftUI

struct ItemsForSale: Identifiable {
  let id: String = UUID().uuidString
  let name: String
  let size: Int
  let color: String
  let description: String
}


struct ProductsView: View {
  
  @State var itemsForSale: [ItemsForSale] = []
  
  var body: some View {
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      List {
        ForEach(itemsForSale) { item in
          HStack(alignment: .firstTextBaseline) {
            Text(item.name)
              .font(.largeTitle)
              .bold()
            
            Spacer()
            
            Text("Size: \(item.size)")
              .font(.headline)
              .bold()
          }
        }
      }
      .listStyle(.grouped)
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
    
    itemsForSale.append(item1)
    itemsForSale.append(item2)
    itemsForSale.append(item3)
    itemsForSale.append(item4)

  }
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductsView()
  }
}
