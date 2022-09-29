//
//  WelcomeView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/14/22.
//

import SwiftUI

struct WelcomeView: View {
  /// State Design Pattern
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
        UserName(text: "Theo")
        Button(action: {
          /// State Design Pattern
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
