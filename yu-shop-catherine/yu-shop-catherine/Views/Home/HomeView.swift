//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct HomeView: View {
  
  var body: some View {
    
    TabView {
      ProductsView()
        .tabItem {
          Image(systemName: Constants.SfSymbols.homeTab)
          TabText(text: "Home")
        }
        .tag(0)
      
      ProductsView()
        .tabItem {
          Image(systemName: Constants.SfSymbols.browseTab)
          TabText(text: "Browse")
        }
        .tag(1)
      
      ProfileView()
        .tabItem {
          Image(systemName: Constants.SfSymbols.profileTab)
          TabText(text: "Profile")
        }
        .tag(2)
      
      CartView()
        .tabItem {
          Image(systemName: Constants.SfSymbols.bagTab)
          TabText(text: "Bag")
        }
        .tag(3)
    }
    .accentColor(Color("TextColor"))
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
