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
  
  var body: some Scene {
    WindowGroup {
      SplashScreenView()
        .environmentObject(bag)
    }
  }
}
