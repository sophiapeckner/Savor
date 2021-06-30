//
//  RecipeTableViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/29/21.
//

import UIKit

class RecipeTableViewController: UITableViewController {
    
    public var models: [(String, (() -> Void))] = [
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
        cell.textLabel?.text = models[indexPath.row].0
        
//        cell.textLabel?.numberOfLines = 0
//        tableView.rowHeight = UITableView.automaticDimension
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        models[indexPath.row].1()
        
    }
}
