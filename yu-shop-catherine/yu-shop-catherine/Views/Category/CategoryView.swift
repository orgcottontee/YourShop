//
//  CategoryView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/17/22.
//

import SwiftUI

struct CategoryView: View {
  
  var columns = [GridItem(.flexible())]
  var categories: [Category]
  
  var body: some View {
    
    NavigationView {
      ZStack {
        Color("BackgroundColor").edgesIgnoringSafeArea(.all)
        ScrollView(.horizontal) {
          LazyHGrid(rows: columns, spacing: 20) {
            ForEach(categories, id: \.id) { category in
              CategoryCard(category: category)
            }
          }
          .padding()
        }
        .navigationTitle("Categories")
      }
    }
  }
}

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView(categories: Category.sampleCategory)
  }
}
