//
//  FileManager.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/15/22.
//

import Foundation

public extension FileManager {
  static var documentsDirectoryURL: URL {
    return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
