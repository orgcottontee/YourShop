//
//  HomeTextsViews.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct WelcomeText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.largeTitle)
  }
}

struct UserName: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.title2)
  }
}

struct onboardingTitle: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.largeTitle)
  }
}

struct onboardingTagline: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.caption)
  }
}

struct TabText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
  }
}

struct HomeTextsView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      WelcomeText(text: "Welcome")
      UserName(text: "User")
      onboardingTitle(text: "Yu Shop")
      onboardingTagline(text: "At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
      TabText(text: "Home")
    }
  }
}
