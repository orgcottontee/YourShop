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
        .tag(0)
      WelcomeView()
        .tabItem {
          Label("Home", systemImage: "house")
        }
        .tag(1)
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "tshirt")
        }
        .tag(2)
      BagView()
       // .badge(bag.products.count)
        .tabItem {
          Label("Bag", systemImage: "bag")
        }
        .tag(4)
    }
    //    TabBar()
    //      .environmentObject(bag)
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
      .environmentObject(Bag())
  }
}
