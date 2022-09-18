//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct HomeView: View {
  
  //var columns = [GridItem(.adaptive(minimum: 160))]
  
  var body: some View {
    TabBar()
    //    NavigationView {
    //      ScrollView {
    //        LazyVGrid(columns: columns) {
    //          ForEach(productList, id: \.id) { product in
    //            ProductListView()
    //            HStack(alignment: .firstTextBaseline) {
    //              Text(product.name)
    //                .font(.largeTitle)
    //                .bold()
    //                .padding()
    //
    //              Spacer()
    //
    //              Text("Size: \(product.size)")
    //                .font(.headline)
    //                .bold()
    //                .padding()
    //            }
    //          }
    //        }
    //        .navigationTitle("Products")
    //      }
    //    }
    //  }
  }
}
    
struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
