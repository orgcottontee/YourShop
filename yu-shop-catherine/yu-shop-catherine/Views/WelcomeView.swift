//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct WelcomeView: View {
  
  @State var showOnboardingModal = false
  @State var itemDiscounts: Item = Item(price: 200.0, discountType: .springSale)
  
  
  var body: some View {
  
    ZStack {
      Image("WelcomeViewBackground")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
        .opacity(0.3)
      
      VStack {
        WelcomeText(text: Constants.title.homeTitle)
        UserName(text: "Theo")
        Button(action: {
          showOnboardingModal.toggle()
        }) {
          Image(systemName: Constants.SfSymbols.homeView)
            .foregroundColor(Color("TextColor"))
            .font(.system(size: Constants.SfSymbols.size, weight: .ultraLight))
        }
        .padding()
        .sheet(isPresented: $showOnboardingModal) {
          OnboardingModalView()
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
    WelcomeView()
      .previewInterfaceOrientation(.landscapeLeft)
    WelcomeView()
      .preferredColorScheme(.dark)
    WelcomeView()
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeLeft)
  }
}


