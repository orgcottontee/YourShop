//
//  ModalView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct onboardingModalView: View {
  
  var body: some View {
    
    ZStack {
      //Modal Background Color
      Color(.white).edgesIgnoringSafeArea(.all)
    
      VStack {
        Text("Yu Shop")
          .font(.largeTitle)
          .padding()
        Text("At Yu Shop, you will discover timeless, classic quality clothing created by independent designers")
          .font(.caption)
          .multilineTextAlignment(.center)
          .padding()
        Text("In this app, you'll...")
          .font(.title2)
        List {
          Text ("Discover products on sale in a list")
          Text("Discover products in a catalog fetched from an API and saved in the app")
          Text("Selec tyour favorite products and add it to your shopping cart")
          Text("View the total amount due at checkout before finalzing payment")
          Text("Get to apply a discount code at the checkout page")
          Text("Have the option to write a review and add a photo of the product(s) you purhcased")        }
        .listStyle(.inset)
      }
    }
    
    
  }
  
  
  struct onboardingModalView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
  }
}
