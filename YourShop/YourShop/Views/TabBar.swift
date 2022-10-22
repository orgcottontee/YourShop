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
        ProductListView(productFetcher: ProductFetcher())
      }
      .tabItem {
        Label("Browse", systemImage: "magnifyingglass")
      }
      .tag(0)
      WelcomeView()
    }
    .tabItem {
      Label("Home", systemImage: "house")
    }
    .tag(1)
    
  }
  //      NavigationView {
  //        ProductListView(productFetcher: ProductFetcher())
  //      }
  //      .tabItem {
  //        Label("Browse", systemImage: "magnifyingglass")
  //      }
  //      .tag(1)
  //
  //      NavigationView {
  //        WelcomeView()
  //      }
  //      .tabItem {
  //        Label("Home", systemImage: "house")
  //      }
  //      .tag(2)
  //
  //      NavigationView {
  //        ProfileView()
  //      }
  //      .tabItem {
  //        Label("Profile", systemImage: "tshirt")
  //      }
  //      .tag(3)
  //
  //      NavigationView {
  //        CartView()
  //      }
  //      .badge(bag.products.count)
  //      .tabItem {
  //        Label("Bag", systemImage: "bag")
  //      }
  //      .tag(4)
  //    }
  //    .accentColor(Color("TextColor"))
  //  }
}

struct TabView_Previews: PreviewProvider {
  static var previews: some View {
    TabBar()
      .environmentObject(Bag())
  }
}
