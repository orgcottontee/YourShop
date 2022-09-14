//
//  TabsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct TabsView: View {
    
    var body: some View {
      TabView {
        WelcomeView()
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
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
