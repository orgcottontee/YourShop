//
//  ModalView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI



struct onboardingModalView: View {
  
  @Binding var isShowing: Bool
  
  
  var body: some View {
    ZStack(alignment: .bottom) {
      if isShowing {
        Color.black
          .ignoresSafeArea()
          .onTapGesture {
            isShowing = false
          }
        
        VStack {
          Text("Hello")
        }
        .frame(height: 800)
        .frame(maxWidth: .infinity)
        .background(.white)
        .transition(.move(edge: .bottom))
      }
    }
    .frame(width: .infinity, height: .infinity, alignment: .bottom)
    .ignoresSafeArea()
  }
}

struct ModalView_Previews: PreviewProvider {
  static var previews: some View {
     ContentView()
  }
}
