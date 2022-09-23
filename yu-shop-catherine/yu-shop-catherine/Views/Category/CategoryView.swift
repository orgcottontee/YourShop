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
    
    ZStack {
      Color("BackgroundColor").edgesIgnoringSafeArea(.all)
      VStack(alignment: .leading) {
        Text("Yu Shop")
          .kerning(4)
          .rotationEffect(Angle(degrees: -90))
          .font(.largeTitle.bold())
        ScrollView(.horizontal) {
          LazyHGrid(rows: columns, spacing: 20) {
            ForEach(categories, id: \.id) { category in
              CategoryCard(category: category)
            }
       //     NavigationLink(destination: ProductDetailView(product: product)) {
              
            }
          }
          .padding()
        }
      }
    }
  }

struct CategoryView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryView(categories: Category.sampleCategory)
  }
}
