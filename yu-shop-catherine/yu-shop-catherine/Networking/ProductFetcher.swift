//
//  ProductFetcher.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/15/22.
//

import Foundation
import SwiftUI

class ProductFetcher: ObservableObject {
  
  enum APIError: Error {
    case requestFailed
    case responseDecodingFailed
    case urlCreationFailed
  }
  
  @Published var products = [Product]() {
    didSet {
      savePList()
    }
  }
  
  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration
  private let savePListURL = URL(fileURLWithPath: "PList Products",
                                 relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("plist")
  
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
  
  private func savePList() {
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .xml
    
    do {
      let productsPListData = try encoder.encode(products)
      
      try productsPListData.write(to: savePListURL, options: .atomicWrite)
    } catch let error {
      print(error)
    }
    
  }
  
}
