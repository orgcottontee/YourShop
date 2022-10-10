//
//  ProductsView.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/8/22.
//

import SwiftUI

struct ProductListView: View {
  
  public enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
  }
  
  @State private var products: [Product] = []
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
        products = try await fetchProducts()
      } catch APIError.requestFailed {
        print("Your request failed")
      } catch APIError.responseDecodingFailed {
        print("Failed response")
      } catch APIError.urlCreationFailed {
        print("Invalid URL")
      } catch {
        print(error.localizedDescription)
      }
    }
  }
  
  func fetchProducts() async throws -> [Product] {
    guard let url = URL(string: "https://fakestoreapi.com/products") else {
      throw APIError.urlCreationFailed
    }
    let configuration = URLSessionConfiguration.default
    let session = URLSession(configuration: configuration)
    
    let (data, response) = try await session.data(from: url)
    print("Data downladed \(data)")
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode)
    else {
      throw APIError.requestFailed
    }
    let productResponse = try JSONDecoder().decode([Product].self, from: data)
    return productResponse
  }
}

struct ProductsView_Previews: PreviewProvider {
  static var previews: some View {
    ProductListView()
  }
}
