//
//  CategoryView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct CategoryView: View {
  
  var columns = [GridItem(.adaptive(minimum: 160), spacing: 30)]
  var categoryList: [Category]
  
  var body: some View {
    
    NavigationView {
      ScrollView {
        LazyVGrid(columns: columns, spacing: 20) {
          ForEach(productList, id: \.id) { product in
            CategoryCard(product: product)
          }
        }
        .padding()
      }
      .navigationTitle("Categories")
    }
  }
}

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView(categoryList: Category.sampleCategory)
  }
}
