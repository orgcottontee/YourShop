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

struct UserName: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.title2)
  }
}

struct OnboardingTitle: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.largeTitle)
  }
}

struct OnboardingTagline: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.caption)
      .padding()
      .multilineTextAlignment(.center)
  }
}

struct OnboardingFeatures: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.callout)
      .padding()
  }
}

struct StartBrowsingText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .kerning(4)
      .foregroundColor(Color("TextColor"))
      .font(.subheadline)
      .padding(.bottom)
  }
}


struct WelcomeTextView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        WelcomeText(text: "Welcome")
        UserName(text: "User")
        OnboardingTitle(text: "Yu Shop")
        OnboardingTagline(text: "At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
        OnboardingTagline(text: "In this app you will be able to buy your favorite clothes")
        StartBrowsingText(text: "Start Browsing")
      }
    }
}
