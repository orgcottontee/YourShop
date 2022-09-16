//
//  HomeTextsViews.swift
//  yu-shop-catherine
//
//  Created by adobada on 8/21/22.
//

import SwiftUI

struct TabText: View {
  var text: String
  var body: some View {
    Text(text.uppercased())
      .foregroundColor(Color("TextColor"))
  }
}

struct HomeTextsView_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      TabText(text: "Home")
    }
  }
}
