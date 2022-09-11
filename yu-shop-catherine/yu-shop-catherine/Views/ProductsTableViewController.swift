//
//  ProductsTableViewController.swift
//  yu-shop-catherine
//
//  Created by adobada on 9/9/22.
//

import UIKit

class ProductsTableViewController: UITableViewController {
  
  var products: [Product] = [
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
    Product(name: "Pants", size: 3, color: "Black", description: "100% Cotton"),
    Product(name: "T-Shirt", size: 4, color: "White", description: "100% Jersey Cotton"),
    Product(name: "Shorts", size: 1, color: "Indigo", description: "Denim. Made in Japan"),
    Product(name: "Hoodie", size: 4, color: "Black", description: "100% French Terry Cotton"),
  ]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem
  }
  
  // MARK: - Table view data source
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    self.products.count
  }
  
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "productsTableViewCell", for: indexPath)
    
    return cell
  }
  
  
  /*
   // Override to support conditional editing of the table view.
   override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the specified item to be editable.
   return true
   }
   */
  
  /*
   // Override to support editing the table view.
   override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
   if editingStyle == .delete {
   // Delete the row from the data source
   tableView.deleteRows(at: [indexPath], with: .fade)
   } else if editingStyle == .insert {
   // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
   }
   }
   */
  
  /*
   // Override to support rearranging the table view.
   override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
   
   }
   */
  
  /*
   // Override to support conditional rearranging of the table view.
   override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
   // Return false if you do not want the item to be re-orderable.
   return true
   }
   */
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
