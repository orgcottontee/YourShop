//
//  ContentView.swift
//  YourShop
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct MainView: View {
  
  @StateObject var bag = Bag()
  
  var body: some View {
    TabBar()
      .environmentObject(bag)
  }
}

struct TabsView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
