//
//  WelcomeTextView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/15/22.
//

import SwiftUI

struct WelcomeTextView: View {
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct WelcomeText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.largeTitle)
  }
}

struct StartBrowsingText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.subheadline)
    
  }
}

struct WelcomeTextView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      WelcomeTextView()
      WelcomeText(text: "Welcome")
      StartBrowsingText(text: "Start Browsing")
    }
  }
}
