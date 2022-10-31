//
//  yu_shop_catherineApp.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

@main
struct yu_shop_catherineApp: App {
  
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      SplashScreenView()
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
    }
  }
}
