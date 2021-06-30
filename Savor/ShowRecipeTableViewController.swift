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
        self.clearsSelectionOnViewWillAppear = false
        Variables.global.recipes = ["Fruits", "Veggies", "Corn"]
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Variables.global.recipes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath)
        cell.textLabel?.text = Variables.global.recipes[indexPath.row]
        cell.detailTextLabel?.numberOfLines = 2
        tableView.rowHeight = 80
        cell.imageView?.image = UIImage(named: Variables.global.recipes[indexPath.row])

        return cell
    }

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
