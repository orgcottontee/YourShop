//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductListView: View {
  
  var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
  var products = productList
  
  var body: some View {
      
      ZStack {
        Color("BackgroundColor").edgesIgnoringSafeArea(.all)
        VStack(alignment: .leading) {
          Text("Products")
            .kerning(4)
            .font(.largeTitle.bold())
            .padding()
          ScrollView {
            LazyVGrid(columns:columns, spacing: 20) {
              ForEach(products, id: \.id) { product in
                ProductCard(product: product)
              }
         //     NavigationLink(destination: ProductDetailView(product: product)) {
                
              }
            }
            .padding()
          }
        }
      }
    
    
    //    NavigationView {
    //      List {
    //        ForEach(productList) { product in
    //          NavigationLink(destination: ProductDetailView(product: product)) {
    //            HStack(alignment: .center) {
    //              Text(product.name)
    //                .font(.title)
    //                .bold()
    //                .padding()
    //
    //              Spacer()
    //
    //              Text("Size: \(product.size)")
    //                .font(.headline)
    //                .bold()
    //                .padding()
    //            }
    //          }
    //        }
    //      }
    //      .navigationTitle("Products")
    //    }
  }

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView()
  }
}
