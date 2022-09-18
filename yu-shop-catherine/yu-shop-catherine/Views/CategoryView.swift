//
//  CategoryView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct CategoryView: View {
  
  var product: Product
  var columns = [GridItem(.adaptive(minimum: 160))]
  
  var body: some View {
    
    NavigationView {
      ScrollView {
        LazyVGrid(columns: columns) {
          ForEach(productList, id: \.id) { product in
            ZStack(alignment: .bottom) {
              Image(product.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 180)
                .scaledToFit()
              
              
              VStack(alignment: .leading) {
                Text(product.name)
                  .bold()
                Text("$\(product.price)")
                  .font(.caption)
              }
              .padding(10)
              .frame(width: 180, alignment: .leading)
              .background(.ultraThinMaterial)
              .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
          }
        }
      }
      .padding()
      .navigationTitle("Categories")
    }
  }
}

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView(product: productList[0])
  }
}
