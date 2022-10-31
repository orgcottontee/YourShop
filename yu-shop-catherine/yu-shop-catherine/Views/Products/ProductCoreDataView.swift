//
//  ProductCoreDataView.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/17/22.
//

import SwiftUI
import CoreData

struct ProductCoreDataView: View {
  
  @Environment(\.managedObjectContext) var viewContext
  @ObservedObject var productFetcher = ProductFetcher()
  @State var products: [Product] = []
  let productFetchRequest = ProductCoreData.basicFetchRequest()
  var coreDataProducts: FetchedResults<ProductCoreData> {
    productFetchRequest.wrappedValue
  }
  
  var body: some View {
    VStack {
      List {
        Section {
          ForEach(coreDataProducts, id: \.self) { product in
            HStack {
              Text(product.title)
              Spacer()
            }
          }
        }
      }
      .navigationBarTitle(Text("Launches"))
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
      productFetcher.saveCoreData()
    }
  }
}
struct ProductCoreDataView_Previews: PreviewProvider {
  static var previews: some View {
    ProductCoreDataView()
  }
}
