//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct ContentView: View {
  
  @State private var onboardingModal = false
  
  //  @State private var onboardingScreenModal: Bool = false
  // @State is a state variable. Whenever a state variable changes, we want SwiftUI to recomupte the body. State variable and body of view are always in sync.
  // private to contentview and no one can access it
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        HStack {
          WelcomeText(text: "Welcome,")
            .padding([.top, .leading, .trailing])
          Spacer()
          Button(action: {
            self.onboardingModal = true
          }) {
            Image(systemName: "hand.wave")
              .foregroundColor(Color("TextColor"))
              .font(.system(size: Constants.SfSymbols.size, weight: .ultraLight))
              .padding([.top, .leading, .trailing])
          }.sheet(isPresented: $onboardingModal, onDismiss: {}, content: {
            OnboardingModalView(onboardingModal: self.$onboardingModal)
          })
        }
        
        HStack {
          UserName(text: "Theo")
            .padding(.leading)
          Spacer()
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

