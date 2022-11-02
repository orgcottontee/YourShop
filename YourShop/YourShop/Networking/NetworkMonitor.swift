//
//  NetworkMonitor.swift
//  YourShop
//
//  Created by adobada on 11/2/22.
//

import Foundation
import Network

class NetworkMonitor: ObservableObject {
  private let networkMonitor = NWPathMonitor()
  private let workerQueue = DispatchQueue(label: "Monitor")
  var hasConnection = false
  
  init() {
    networkMonitor.pathUpdateHandler = { path in
      self.hasConnection = path.status == .satisfied
      Task {
        await MainActor.run {
          self.objectWillChange.send()
        }
      }
    }
    networkMonitor.start(queue: workerQueue)
  }
}
