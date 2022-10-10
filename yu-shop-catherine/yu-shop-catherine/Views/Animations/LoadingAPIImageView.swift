//
//  LoadingAPIImageView.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/10/22.
//

import SwiftUI

struct LoadingAPIImageView: View {
  
  @State private var isActive = false
  @State private var size = 0.2
  @State private var opactiy  = 0.4
  
  var body: some View {
    VStack {
      VStack {
        Image(systemName: Constants.SfSymbols.loadingAPIImageView)
          .font(.system(size:50, weight: .ultraLight))
          .foregroundColor(Color("TextColor"))
      }
      .scaleEffect(size)
      .opacity(opactiy)
      .onAppear {
        withAnimation(.easeIn(duration: 1.2)) {
          self.size = 0.5
          self.opactiy = 0.7
        }
      }
    }
  }
}

struct LoadingAPIImageView_Previews: PreviewProvider {
  static var previews: some View {
    LoadingAPIImageView()
  }
}
