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
  @State var itemsForSale: [ItemsForSale] = []
  
  var body: some View {
    // Background Color
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      
      // Header
      VStack {
        HStack(alignment: .top) {
          VStack(alignment: .leading) {
            WelcomeText(text: Constants.title.homeTitle)
              .font(.largeTitle)
            UserName(text: "Theo")
          }
          .padding()
          
          Spacer()
          
          // Button
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
        Spacer()
      }
      .padding()
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


