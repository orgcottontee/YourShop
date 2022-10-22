//
//  TabView.swift
//  YourShop
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct TabBar: View {
  
  @EnvironmentObject var bag: Bag
  
  var body: some View {
    
    TabView {
      NavigationView {
        CategoryView(categories: Category.sampleCategory)
      }
      .tabItem {
        Label("Categories", systemImage: "rectangle.3.group")
      }
      .tag(0)
      
      NavigationView {
        ProductCoreDataView()
//        ProductListView(productFetcher: ProductFetcher())
      }
      .tabItem {
        Label("Browse", systemImage: "magnifyingglass")
      }
      .tag(1)
      
      NavigationView {
        WelcomeView()
      }
      .tabItem {
        Label("Home", systemImage: "house")
      }
      .tag(2)
      
      NavigationView {
        ProfileView()
      }
      .tabItem {
        Label("Profile", systemImage: "tshirt")
      }
      .tag(3)
      
      NavigationView {
        CartView()
      }
      .badge(bag.products.count)
      .tabItem {
        Label("Bag", systemImage: "bag")
      }
      .tag(4)
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
