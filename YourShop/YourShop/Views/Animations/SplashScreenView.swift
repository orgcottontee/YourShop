//
//  SplashScreenView.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/9/22.
//

import SwiftUI

struct SplashScreenView: View {
  
  @State private var isActive = false
  @State private var size = 0.1
  @State private var opacity  = 0.4
  // TODO: Animate a hanger from top and a tshirt from bottom to meet in the middle
  
  var body: some View {
    
    if isActive {
      MainView()
    } else {
      VStack {
        VStack {
          Image(systemName: Constants.SfSymbols.splashScreenView)
            .font(.system(size:50, weight: .ultraLight))
            .foregroundColor(Color("TextColor"))
        }
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
          withAnimation(.easeIn(duration: 1.2)) {
            self.size = 0.7
            self.opacity = 0.7
          }
        }
      }
      .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
          withAnimation {
            self.isActive = true
          }
        }
      }
    }
  }
}

struct SplashScreenView_Previews: PreviewProvider {
  static var previews: some View {
    SplashScreenView()
  }
}
