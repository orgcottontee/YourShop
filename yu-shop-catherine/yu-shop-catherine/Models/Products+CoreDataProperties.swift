//
//  Products+CoreDataProperties.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/17/22.
//

import CoreData
import SwiftUI

extension Products {
  @NSManaged public var id: UUID
  @NSManaged public var title: String
  @NSManaged public var image: String
  @NSManaged public var category: String
  @NSManaged public var price: Double
  @NSManaged public var productDescription: String
  
  static func basicFetchRequest() -> FetchRequest<Products> {
    return FetchRequest<Products>(entity: Products.entity(), sortDescriptors: [])
  }
}

