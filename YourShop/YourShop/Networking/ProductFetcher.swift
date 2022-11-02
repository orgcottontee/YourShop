//
//  ProductFetcher.swift
//  YourShop
//
//  Created by adobada on 10/15/22.
//

import Foundation
import SwiftUI
import Network

class ProductFetcher: ObservableObject {
  
  enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
    case noInternetConnection
  }
  
  private var products = [Product]()
  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration
  private let monitor = NWPathMonitor()
  
  init() {
    self.sessionConfiguration = URLSessionConfiguration.default
    self.session = URLSession(configuration: sessionConfiguration)
  }
  
  func fetchProducts() async throws -> [Product] {
    guard let url = URL(string: "https://fakestoreapi.com/products") else {
      throw APIError.urlCreationFailed
    }
    let (data, response) = try await session.data(from: url)
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode)
    else {
      throw APIError.requestFailed
    }
    let productResponse = try JSONDecoder().decode([Product].self, from: data)
    return productResponse
    
  }
}


