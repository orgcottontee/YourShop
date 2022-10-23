//
//  WelcomeView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct WelcomeView: View {
  
  @State var showOnboardingModal = false
  
  var body: some View {
    
    ZStack {
      Image("WelcomeViewBackground")
        .resizable()
        .scaledToFill()
        .edgesIgnoringSafeArea(.all)
        .opacity(0.3)
      
      VStack {
        
        Spacer()
        
        WelcomeText(text: Constants.title.homeTitle)
        Button(action: {
          showOnboardingModal.toggle()
        }) {
          Image(systemName: Constants.SfSymbols.welcomeView)
            .foregroundColor(Color("TextColor"))
            .font(.system(size: Constants.SfSymbols.size, weight: .ultraLight))
        }
        .sheet(isPresented: $showOnboardingModal) {
          OnboardingModalView()
        }
        
        Spacer()
        
      }
    }
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
