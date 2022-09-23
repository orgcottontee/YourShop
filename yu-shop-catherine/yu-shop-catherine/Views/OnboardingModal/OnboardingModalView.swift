//
//  ModalView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct OnboardingModalView: View {
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    
    VStack {
      HStack {
        OnboardingTitle(text: Constants.appInfo.appName)
        
        Spacer()
        
        Button(action: {
          presentationMode.wrappedValue.dismiss()
        }) {
          Image(systemName: Constants.SfSymbols.onboardingModal)
            .foregroundColor(Color("TextColor"))
            .font(.system(size: Constants.SfSymbols.size , weight: .ultraLight))
        }
      }
      .padding()
      
      OnboardingTagline(text: "At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
      List {
        OnboardingFeatures(text: "Discover products on sale in a list")
        OnboardingFeatures(text: "Discover products in a catalog fetched from an API and saved in the app")
        OnboardingFeatures(text: "Select you favorite product(s) and add them to your shopping cart")
        OnboardingFeatures(text: "View the total amount due at checkout before finalzing payment")
        OnboardingFeatures(text: "Apply a discount code at the checkout page")
        OnboardingFeatures(text: "Write a review and add a photo of the product(s) you purchased")
      }
      .listStyle(.grouped)
    }
  }
}

struct OnboardingModalView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingModalView()
  }
}


