//
//  ProductFetcher.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/15/22.
//

import Foundation

class ProductFetcher: ObservableObject {
  
  @Published var products = [Product]()
  
  enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
  }
  
  init() {
    
  }
  
  func fetchProducts() async throws -> [Product] {
    guard let url = URL(string: "http://fakestoreapi.com/products") else {
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
