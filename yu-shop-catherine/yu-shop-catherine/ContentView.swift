//
//  ContentView.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/19/22.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    

    
    ZStack {
      Color(.gray)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        HStack(spacing: 10) {
          Text("Welcome,")
            .font(.largeTitle)
            .padding([.top, .leading, .trailing])
          Spacer()
          Button(action: <#T##() -> Void#>, label: <#T##() -> _#>)
          Image(systemName: "bag")
            .font(.largeTitle)
            .padding([.top, .leading, .trailing])
        }
        HStack {
          Text("Theo")
            .font(.title2)
            .padding(.leading)
          Spacer()
            

        }
        
        Spacer()
      }
      
      
      
      
    }
    
  }
  
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
