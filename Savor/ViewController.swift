//
//  ViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/29/21.
//

import UIKit

class Variables{
    static var global = Variables(selectedRecipe: "", recipes: [""])
    
    var selectedRecipe: String
    var recipes: [String]
    
    private init(selectedRecipe: String, recipes: [String]){
        self.selectedRecipe = selectedRecipe
        self.recipes = recipes
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
//    func showViewController(){
//        let newViewController = NewViewController()
//        self.navigationController?.pushViewController(newViewController, animated: true)
//    }
}

