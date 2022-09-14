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
            Image(systemName: "house")
            Text("Home")
          }
          .tag(0)
        ProductsView()
          .tabItem {
            Image(systemName: "magnifyingglass")
            Text("Browse")
          }
          .tag(1)
        ProfileView()
          .tabItem {
            Image(systemName: "person")
            Text("Profile")
          }
          .tag(2)
        CartView()
          .tabItem {
            Image(systemName: "bag")
            Text("Cart")
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
