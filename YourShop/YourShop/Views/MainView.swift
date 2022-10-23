//
//  ContentView.swift
//  YourShop
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct MainView: View {
  
  @EnvironmentObject var bag: Bag
  
  var body: some View {
    TabView {
      ProductListView()
        .tabItem {
          Label("Browse", systemImage: "magnifyingglass")
        }
      WelcomeView()
        .tabItem {
          Label("Welcome", systemImage: "house")
        }
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "tshirt")
        }
      BagView()
        .badge(bag.products.count)
        .tabItem {
          Label("Bag", systemImage: "bag")
        }
    }
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(Bag())
  }
}
