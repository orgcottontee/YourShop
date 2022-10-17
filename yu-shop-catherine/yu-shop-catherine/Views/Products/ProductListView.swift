//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductListView: View {
  
  // Ask Logan:
    // 1. When do you use @ObservedObject, @State, @StateObject, @EnvironmentObject
    // 2. When do you use private var versus just var
    // 3. When do you initialize (productFetcher = ProductFetcher()) versus conform to (productFetcher: ProductFetcher)?
  
  @ObservedObject var productFetcher: ProductFetcher
  //@EnvironmentObject var productFetcher: ProductFetcher
  var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
  
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
            ForEach(productFetcher.products, id: \.id) { product in
              NavigationLink(destination: ProductDetailView(product: product)) {
                ProductCard(product: product)
              }
            }
          }
          .padding()
        }
      }
    }
    .task {
      do {
        productFetcher.products = try await productFetcher.fetchProducts()
        //products = try await productFetcher.fetchProducts()
      } catch ProductFetcher.APIError.requestFailed {
        print("Your request failed")
      } catch ProductFetcher.APIError.responseDecodingFailed {
        print("Failed response")
      } catch ProductFetcher.APIError.urlCreationFailed {
        print("Invalid URL")
      } catch {
        print(error.localizedDescription)
      }
    }
  }
}
  
//  struct ProductsView_Previews: PreviewProvider {
//    static var previews: some View {
//      ProductListView(storeProduct: SaveProduct())
//    }
//  }
