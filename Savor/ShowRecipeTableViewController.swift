//
//  ShowRecipeTableViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/30/21.
//

import UIKit

class ShowRecipeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Preserves table view selection
        self.clearsSelectionOnViewWillAppear = false
        // Sets the recipes
        Variables.global.recipes = ["Fruits", "Veggies", "Corn"]
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Variables.global.recipes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Returns the reusable cell called labelCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath)
        // Fills corresponding recipes label
        cell.textLabel?.text = Variables.global.recipes[indexPath.row]
        cell.detailTextLabel?.numberOfLines = 2
        tableView.rowHeight = 80
        // Fills corresponding image
        cell.imageView?.image = UIImage(named: Variables.global.recipes[indexPath.row])

        return cell
    }

    // After selecting a row, sets selectedRecipe to that meal's name
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            tableView.deselectRow(at: indexPath, animated: true)
            Variables.global.selectedRecipe = Variables.global.recipes[indexPath.row]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
