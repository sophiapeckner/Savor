//
//  EnlargeRecipeViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/30/21.
//

import UIKit

class EnlargeRecipeViewController: UIViewController {

    
    @IBOutlet weak var recipeNameLabel: UILabel!
    
    @IBOutlet weak var ingredientLabel: UILabel!
    
    @IBOutlet weak var instructionLabel: UILabel!
    
    @IBOutlet weak var recipeLink: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ingredientLabel.text = ""
        
        recipeLink.addTarget(self, action: #selector(openLink), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
            
        ingredientLabel.numberOfLines = 0
//        ingredientLabel.text = "\(Variables.global.selectedRecipe) ingredients"
        
        recipeNameLabel.text = Variables.global.selectedRecipe
        
//        let myInstructions = getInstructions(recipeDict: myDict)
        
        let myIngredients = myDict[Variables.global.selectedRecipe]![1]
        
        for i in (myIngredients as! [String]) {
            ingredientLabel.text = ingredientLabel.text! + " \(i) \n "
        }
        
        let myInstructions = myDict[Variables.global.selectedRecipe]![0]
        
        instructionLabel.text = "Instructions Link: \(myInstructions)"
        // Sets the recipes
        
//        print(Variables.global.recipes)
    }
    
    func getInstructions(recipeDict: [String:Array<Any>]) -> [String]{
        var instructions = [String]()
        for (_, recipeInfo) in recipeDict {
            instructions.append(recipeInfo[0] as! String)
        }
        return instructions
    }
    
    @objc func openLink(){
        if let urlToOpen = URL (string: "https://www.amazon.com"){
                UIApplication.shared.open(urlToOpen, options: [:]){ (done) in
                print("Link was opened successfully")
            }
        }
    }
    
//    func getIngredients(recipeDict: [String:Array<Any>]) -> [String]{
//
//    }
    
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
