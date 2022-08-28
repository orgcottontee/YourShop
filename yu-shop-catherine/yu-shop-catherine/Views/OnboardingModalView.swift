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
    // Background Color
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      
      // Content
      VStack {
        HStack {
          // Header
          Text("Yu Shop")
            .foregroundColor(Color("TextColor"))
            .font(.largeTitle)
            .padding()
          
          Spacer()
          
          // Close Modal Button
          Button(action: {
            presentationMode.wrappedValue.dismiss()
          }) {
            Image(systemName: "clear")
              .foregroundColor(Color("TextColor"))
              .font(.system(size: 34 , weight: .ultraLight))
          }
        }
        .padding()
        
        // Subheader
        Text("At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
          .foregroundColor(Color("TextColor"))
          .font(.caption)
          .multilineTextAlignment(.center)
          .padding()
        
        // List of features
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
  static var previews: some View {
    OnboardingModalView()
  }
}


