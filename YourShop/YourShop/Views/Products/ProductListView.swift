//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI
import CoreData

struct ProductListView: View {

  @Environment(\.managedObjectContext) var viewContext
  @ObservedObject var productFetcher = ProductFetcher()
  @State var products: [Product] = []
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
            ForEach(products, id: \.id) { product in
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
        products = try await productFetcher.fetchProducts()
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

//struct ProductsView_Previews: PreviewProvider {
//  static var previews: some View {
//    let context = PersistenceController.preview.container.viewContext
//    let newProducts = ProductCoreData(context: context)
//    newProducts.title = "Cool Product!"
//    ProductListView()
//  }
//}