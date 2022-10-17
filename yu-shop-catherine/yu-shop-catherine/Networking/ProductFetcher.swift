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
  
  private var products = [Product]() {
    didSet {
      savePList()
      saveBinary()
      saveCoreData()
    }
  }
  
  private let session: URLSession
  private let sessionConfiguration: URLSessionConfiguration
  private let customURL = FileManager.documentsDirectoryURL.appendingPathComponent("custom")
  
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
    // TODO: Write it to CoreData and return from CoreData
    // TODO: Call savePList(), saveBinary(), saveCoreData() here. Must adjust local and class variables before I can call it here
    // TODO: Create a Protocol that houses these classes. Make this class and CoreData class adhere to the Protocol
    return productResponse
    
  }
  
  private func savePList() {
    guard let savePListURL = URL(string: "PListProductsData", relativeTo: customURL)?.appendingPathExtension("plist") else {
      print("Unable to create PList URL")
      return
    }
    let encoder = PropertyListEncoder()
    let decoder = PropertyListDecoder()
    encoder.outputFormat = .xml
    print(savePListURL)
    
    do {
      if !FileManager.default.fileExists(atPath: customURL.path) {
        try FileManager.default.createDirectory(atPath: customURL.path, withIntermediateDirectories: true, attributes: nil)
      }
      let productsPListData = try encoder.encode(products)
      try productsPListData.write(to: savePListURL, options: .atomicWrite)
      let pListData = try Data(contentsOf: savePListURL)
      let decodedProductFromPList = try decoder.decode([Product].self, from: pListData)
      print(decodedProductFromPList)
      // TODO: Display Data - use property listdecoder
    } catch {
      print(error)
    }
  }
  
  private func saveBinary() {
    guard let saveBinaryURL = URL(string: "BinaryProductsData", relativeTo: customURL) else {
      print("Unable to create Binary URL")
      return
    }
    do {
      if !FileManager.default.fileExists(atPath: customURL.path) {
        try FileManager.default.createDirectory(atPath: customURL.path, withIntermediateDirectories: true, attributes: nil)
      }
      let binaryData = try JSONEncoder().encode(products)
      try binaryData.write(to: saveBinaryURL)
      let decodedBinaryData = try JSONDecoder().decode([Product].self, from: binaryData)
      print(decodedBinaryData)
      
      print(decodedBinaryData)
    } catch {
      print(error)
    }
  }
  
  func saveCoreData() {
    products.forEach { product in
      let productCoreData = ProductCoreData(context: PersistenceController.shared.container.viewContext)
      productCoreData.price = product.price
      // TODO: Finish setting
    }
    do {
      try PersistenceController.shared.container.viewContext.save()
    } catch {
      print(error)
    }
   // TODO: Read the context
  }
  
}
