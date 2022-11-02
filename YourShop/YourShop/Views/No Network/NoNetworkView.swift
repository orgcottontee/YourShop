//
//  NoNetworkView.swift
//  YourShop
//
//  Created by adobada on 11/2/22.
//

import SwiftUI

struct NoNetworkView: View {
    var body: some View {
      VStack {
        Image(systemName: Constants.SfSymbols.noConnection)
          .padding()
        Text(Constants.AppInfo.networkErrorMessage)
          .kerning(4)
          .multilineTextAlignment(.center)
          .padding()
      }
      
    }
}

struct NoNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        NoNetworkView()
    }
}
