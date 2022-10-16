//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct HomeTabView: View {
  
  var body: some View {
    TabBar().environmentObject(Bag())
    ProductListView().environmentObject(ProductFetcher())
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    HomeTabView()
  }
}
