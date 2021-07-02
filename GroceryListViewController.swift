//
//  GroceryListViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 7/1/21.
//

import UIKit

class GroceryListViewController: UIViewController {

    @IBOutlet weak var showIngredients: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showGroceryList()

        // Do any additional setup after loading the view.
    }
    
    func showGroceryList(){
        for (name, ingredients) in myGroceryList {
            showIngredients.text = showIngredients.text! + "\n\(name):"
            for ingredient in ingredients {
                showIngredients.text = showIngredients.text! + "\n●\(ingredient)"
            }
        }
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
