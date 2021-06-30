//
//  EnlargeRecipeViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/30/21.
//

import UIKit

class EnlargeRecipeViewController: UIViewController {

    
    @IBOutlet weak var ingredientLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientLabel.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
            
        ingredientLabel.numberOfLines = 0
        ingredientLabel.text = "\(Variables.global.selectedRecipe) ingredients"
            
//        print(Variables.global.recipes)
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
