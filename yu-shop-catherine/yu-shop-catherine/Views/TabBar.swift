//
//  TabView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct TabBar: View {
  
  var body: some View {
    TabView {
      CategoryView()
        .tabItem {
          Label("Home", systemImage: "house")
        }
        .tag(0)
      
      ProductListView()
        .tabItem {
          Label("Browse", systemImage: "magnifyingglass")
        }
        .tag(1)
      
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "tshirt")
        }
        .tag(2)
      
      CartView()
        .tabItem {
          Label("Bag", systemImage: "bag")
        }
        .tag(3)
    }
    .accentColor(Color("TextColor"))
  }
}

struct TabView_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
  }
}
