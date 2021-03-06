//
//  EnlargeRecipeViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/30/21.
//

import UIKit

var myGroceryList = [String:[String]]()
var hasAdded = [Bool]()

class EnlargeRecipeViewController: UIViewController {

    
    @IBOutlet weak var addButton: UIButton!
    
//    button.layer.borderWidth = 1
//    button.layer.borderColor = UIColor.black.cgColor
    
    @IBOutlet weak var addGroceryList: UIButton!
    
    
    @IBOutlet weak var ingredientLabel: UITextView!
    
    @IBOutlet weak var recipeNameLabel: UILabel!
    
    @IBOutlet weak var instructionLabel: UILabel!
    
    @IBOutlet weak var recipeLink: UIButton!
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        var url = value![2] as! String
//        print("URL: \(url)")
        /*
        var url = URL(string: myDict[Variables.global.selectedRecipe]![2] as! String)!
        
        print("URL: \(url)")
        
        DispatchQueue.global().async {
            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.recipeImage.image = UIImage(data: data)
                }
            }
        }
        */
        for _ in Variables.global.recipes {
            hasAdded.append(false)
        }
        
        ingredientLabel.text = ""
        
        recipeLink.addTarget(self, action: #selector(openLink), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
            
        var url = URL(string: myDict[Variables.global.selectedRecipe]![2] as! String)!
        
        print("URL: \(url)")
        
        DispatchQueue.global().async {
            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    self.recipeImage.image = UIImage(data: data)
                }
            }
        }
        
        
//        ingredientLabel.numberOfLines = 0
        
        ingredientLabel.text = ""
//        ingredientLabel.text = "\(Variables.global.selectedRecipe) ingredients"
        
        recipeNameLabel.text = Variables.global.selectedRecipe
        
//        let myInstructions = getInstructions(recipeDict: myDict)
        
        let myIngredients = myDict[Variables.global.selectedRecipe]![1]
        
        for i in (myIngredients as! [String]) {
            ingredientLabel.text = ingredientLabel.text! + " \(i) \n "
        }
        
        let myInstructions = myDict[Variables.global.selectedRecipe]![0]
        
        instructionLabel.text = "Instructions Link: \(myInstructions)"
    }
    
    func getInstructions(recipeDict: [String:Array<Any>]) -> [String]{
        var instructions = [String]()
        for (_, recipeInfo) in recipeDict {
            instructions.append(recipeInfo[0] as! String)
        }
        return instructions
    }
    
    @objc func openLink(){
        let myLink = myDict[Variables.global.selectedRecipe]![0]
        
        print(myLink)
        
        if let urlToOpen = URL (string: myLink as! String){
                UIApplication.shared.open(urlToOpen, options: [:]){ (done) in
                print("Link was opened successfully")
            }
        }
    }
    
    
    
    @IBAction func addButtonTap(_ sender: UIButton) {
        addButton.isHidden = true
        addGroceryList.isHidden = false
        
        //*
        let alertController = UIAlertController(title: "Added", message: "The ingredients have been added to your grocery list", preferredStyle: UIAlertController.Style.alert)
               
                alertController.addAction(UIAlertAction(title: "Got it!", style: UIAlertAction.Style.default, handler: nil))
               
                present(alertController, animated: true, completion: nil)
        //*
        
        let myName = Variables.global.selectedRecipe
        
        let myIngredients = myDict[Variables.global.selectedRecipe]![1]
        
        myGroceryList[myName] = (myIngredients as! [String])
        
//        print(myGroceryList)
        
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
