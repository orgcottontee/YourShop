//
//  ProductFetcher.swift
//  YourShop
//
//  Created by adobada on 10/15/22.
//

import Foundation
import SwiftUI

// TODO: Call savePList(), saveBinary(), saveCoreData() in fetchProducts(). Must adjust local and class variables before I can call it within that function
// TODO: Create a Protocol with these functions. Make class ProductFetcher and class ProductCoreData adhere to the Protocol


class ProductFetcher: ObservableObject {
  
  enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
  }
  
  private var products = [Product]()
  
  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration
  
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


