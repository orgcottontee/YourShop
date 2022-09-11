//
//  ProductsViewControllerRepresentable.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/10/22.
//

import SwiftUI

struct ProductsViewControllerRepresentable: View {
  var body: some View {
    ProductsUITableView()
  }
}

struct ProductsViewControllerRepresentable_Previews: PreviewProvider {
  static var previews: some View {
    ProductsViewControllerRepresentable()
  }
}

struct ProductsUITableView: UIViewControllerRepresentable {
  
  func makeUIViewController(context: Context) -> some UIViewController {
    return ProductsViewController()
  }
  
  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
  }
}

class ProductsViewController: UIViewController {

  let tableView: UITableView = UITableView()

  var products: [Product] = [
    Product(name: "Socks", size: 3, color: "Black", description: "Ribbed"),
    Product(name: "Tank top", size: 4, color: "White", description: "Flowy"),
    Product(name: "Coat", size: 1, color: "Indigo", description: "Weatherproof"),
    Product(name: "Vest", size: 4, color: "Black", description: "Packable"),
    Product(name: "Sandals", size: 3, color: "Black", description: "Perfect for summer"),
    Product(name: "Bucket hat", size: 4, color: "White", description: "Handmade"),
    Product(name: "Six-panel hat", size: 1, color: "Coffee", description: "Loose-fitting"),
    Product(name: "five-panel hat", size: 4, color: "Black", description: "Classic design"),
    Product(name: "Denim", size: 3, color: "Indigo", description: "Raw indigo denim"),
    Product(name: "Jacket", size: 4, color: "White", description: "Windproof"),
    Product(name: "Puffer", size: 1, color: "Indigo", description: "700-down fill"),
    Product(name: "Shirt", size: 4, color: "Black", description: "Go-to"),
    Product(name: "Slacks", size: 3, color: "Black", description: "Two front pleats"),
    Product(name: "Trousers", size: 4, color: "White", description: "Dress up or down"),
    Product(name: "Button down", size: 1, color: "Indigo", description: "Oversize"),
    Product(name: "Sweater", size: 4, color: "Black", description: "Cozy and comfy"),
  ]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    self.view.addSubview(tableView)
    self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "productsTableViewCell")
    self.tableView.frame = view.bounds
    

    
  }
}

extension ProductsViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    self.products.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "productsTableViewCell", for: indexPath)
    cell.textLabel?.text = self.products[indexPath.row].name
    return cell
  }
}
