//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct ContentView: View {
  
  @State var showOnboardingModal = false
  let product = Product(name: "Shoes", size: 40, color: "White", description: nil)
  
  // @State is a state variable: whenever a state variable changes, we want SwiftUI to recomupte the body. The State variable and body of view are always in sync.
  // Private to Contentview and no one can access it
  
  var body: some View {
    // Background Color
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      
      // Header
      VStack {
        HStack(alignment: .top) {
          VStack(alignment: .leading) {
            WelcomeText(text: "Welcome,")
              .font(.largeTitle)
            UserName(text: "Theo")
            Text(product.name)
            Text(String(product.size))
            Text(product.color)
            Text(product.description ?? "No Description")
          }
          .padding()
          
          Spacer()
          
          // Button
          Button(action: {
            showOnboardingModal.toggle()
          }) {
            Image(systemName: "hand.wave")
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
    ContentView()
    ContentView()
      .previewInterfaceOrientation(.landscapeLeft)
    ContentView()
      .preferredColorScheme(.dark)
    ContentView()
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeLeft)
  }
}


