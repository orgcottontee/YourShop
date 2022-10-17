//
//  Products+CoreDataProperties.swift
//  yu-shop-catherine
//
//  Created by adobada on 10/17/22.
//

import CoreData

extension ProductCoreData {
  @NSManaged public var id: UUID
  @NSManaged public var title: String
  @NSManaged public var image: String
  @NSManaged public var category: String
  @NSManaged public var price: Double
  @NSManaged public var productDescription: String
}

