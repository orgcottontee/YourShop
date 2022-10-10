//
//  SplashScreenView.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/9/22.
//

import SwiftUI

struct SplashScreenView: View {
  
  @State private var isActive = false
  @State private var size = 0.8
  @State private var opactiy  = 0.5
  
  var body: some View {
    
    if isActive {
      HomeTabView()
    } else {
      VStack {
        VStack {
          Image(systemName: Constants.SfSymbols.splashScreenView)
            .font(.system(size:50, weight: .ultraLight))
            .foregroundColor(Color("TextColor"))
        }
        .scaleEffect(size)
        .opacity(opactiy)
        .onAppear {
          withAnimation(.easeIn(duration: 1.2)) {
            self.size = 0.9
            self.opactiy = 1.0
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
