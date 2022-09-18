//
//  OnboardingModalTextView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct OnboardingModalTextView: View {
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
      .kerning(2)
      .foregroundColor(Color("TextColor"))
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


struct OnboardingModalTextView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingModalTextView()
    OnboardingTitle(text: "Yu Shop")
    OnboardingTagline(text: "At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
    OnboardingTagline(text: "In this app you will be able to buy your favorite clothes")
    StartBrowsingText(text: "Start Browsing")
  }
}
