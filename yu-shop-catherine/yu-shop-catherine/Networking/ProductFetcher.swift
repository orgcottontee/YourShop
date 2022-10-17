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
      saveBinary()
    }
  }
  
  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration
  private let savePListURL = URL(fileURLWithPath: "PListProductsData",
                                 relativeTo: FileManager.documentsDirectoryURL).appendingPathExtension("plist")
  private let saveBinaryURL = FileManager.default.urls(for: .documentDirectory,
                                                       in: .userDomainMask)[0].appendingPathComponent("BinaryProductsData.txt")
  
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
    print(savePListURL)
    
    do {
      let productsPListData = try encoder.encode(products)
      
      try productsPListData.write(to: savePListURL, options: .atomicWrite)
    } catch let error {
      print(error)
    }
  }
  
  private func saveBinary() {
    
  }
}

//    let saveBinaryURL = FileManager.default.urls(for: .documentDirectory,
//                                        in: .userDomainMask)[0].appendingPathComponent("BinaryProductsData.txt")
//    if let binaryProductsData = stringToSave.data(using: .utf8) {
//        try? stringData.write(to: saveBinaryURL)
//    }

