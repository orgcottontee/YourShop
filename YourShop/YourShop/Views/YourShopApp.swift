//
//  YourShopApp.swift
//  YourShop
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

@main
struct YourShopApp: App {
  
  @StateObject var bag = Bag()
  @StateObject var networkMonitor = NetworkMonitor()
  
  var body: some Scene {
    WindowGroup {
      SplashScreenView()
        .environmentObject(bag)
        .environmentObject(networkMonitor)
    }
  }
}
