//
//  TabView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct TabBar: View {
  
  @EnvironmentObject var bag: Bag
  
  var body: some View {
    TabView {
      CategoryView(categories: Category.sampleCategory)
        .tabItem {
          Label("Categories", systemImage: "rectangle.3.group")
        }
        .tag(0)
      
      NavigationView {
        ProductListView()
        //          .tabItem {
        //            Label("Browse", systemImage: "magnifyingglass")
        //          }
        //        .tag(1)
      }
      .tabItem {
        Label("Browse", systemImage: "magnifyingglass")
      }
      .tag(1)
      
      WelcomeView()
        .tabItem {
          Label("Home", systemImage: "house")
        }
      
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "tshirt")
        }
        .tag(2)
      
      CartView()
        .badge(bag.products.count)
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
      .environmentObject(Bag())
  }
}
