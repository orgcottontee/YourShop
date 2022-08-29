//
//  TextViews.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct WelcomeText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .font(.largeTitle)
  }
}

struct UserName: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
      .font(.title2)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      WelcomeText(text: "Welcome")
      UserName(text: "User")
    }
  }
}
