//
//  ModalView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct OnboardingModalView: View {
  
  @Binding var onboardingModal : Bool
  
  var body: some View {
    
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      
      VStack {
        HStack {
          
          Text("Yu Shop")
            .foregroundColor(Color("TextColor"))
            .font(.largeTitle)
            .padding()
          Spacer()
          Button(action: {
            self.onboardingModal = false
          }) {
            Image(systemName: "clear")
              .foregroundColor(Color("TextColor"))
              .font(.system(size: 34 , weight: .ultraLight))
          }
        }
        .padding()
        
        Text("At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
          .foregroundColor(Color("TextColor"))
          .font(.caption)
          .multilineTextAlignment(.center)
          .padding()
        
        List {
          Text ("Discover products on sale in a list")
          Text("Discover products in a catalog fetched from an API and saved in the app")
          Text("Select you favorite product(s) and add them to your shopping cart")
          Text("View the total amount due at checkout before finalzing payment")
          Text("Apply a discount code at the checkout page")
          Text("Write a review and add a photo of the product(s) you purhcased")
          
        }
        
        .listStyle(.inset)
        .padding()
        
        
      }
    }
    
    
    
  }
}



struct onboardingModalView_Previews: PreviewProvider {
  static private var onboardingModal = Binding.constant(true)
  static var previews: some View {
    
    OnboardingModalView(onboardingModal: onboardingModal)
    OnboardingModalView(onboardingModal: onboardingModal)
      .previewInterfaceOrientation(.landscapeLeft)
    OnboardingModalView(onboardingModal: onboardingModal)
      .preferredColorScheme(.dark)
    OnboardingModalView(onboardingModal: onboardingModal)
      .preferredColorScheme(.dark)
      .previewInterfaceOrientation(.landscapeLeft)
    
    
    
    
    
    
  }
}


