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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
