//
//  ProfileViews.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    NavigationView {
      VStack {
        Text("Customer profile")
      }
      .navigationTitle("Your Profile")
    }
  }
}

struct ProfileViews_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
