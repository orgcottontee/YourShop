//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductListView: View {
  
  //var columns = [GridItem(.adaptive(minimum: 80))]
//columns: columns, spacing: 20
  
  var body: some View {
    
    NavigationView {
      ZStack {
        Color("BackgroundColor").edgesIgnoringSafeArea(.all)
       // VStack(alignment: .leading) {
//          Text("Yu Shop")
//            .kerning(4)
//            .rotationEffect(Angle(degrees: -90))
//            .font(.largeTitle.bold())
          ScrollView() {
            LazyVStack {
              ForEach(productList) { product in
                NavigationLink(destination: ProductDetailView(product: product)) {
                  Text(product.name)
                    .font(.title)
                    .bold()
                    .padding()
                  
                  Spacer()
                  
                  Image(product.image)
                    .resizable()
                    .cornerRadius(4)
                    .frame(width: 180)
                    .scaledToFit()
                  
                }
                
              }
            }
            .padding()
          }
       // }
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
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView()
  }
}
