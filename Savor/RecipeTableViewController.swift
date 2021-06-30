//
//  RecipeTableViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/29/21.
//

import UIKit

class RecipeTableViewController: UITableViewController {
    
    public var models: [String] = [
        "Squash",
        "Noodles"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = models[indexPath.row]
        return cell
        
    }
}
