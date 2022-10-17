//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct HomeTabView: View {
  
  let persistenceController = PersistenceController.shared
  
  var body: some View {
    TabBar()
      .environmentObject(Bag())
      .environment(\.managedObjectContext, persistenceController.container.viewContext)
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    HomeTabView()
  }
}
