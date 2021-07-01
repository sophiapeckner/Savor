//
//  ShowRecipeTableViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/30/21.
//

import UIKit

var myDict : [String:Array] = [String:Array<Any>]()

class ShowRecipeTableViewController: UITableViewController {
    
    // ***
    let glutenFree = [
      "Bing's Mango Salsa":
      ["https://www.foodista.com/recipe/84DB7TTN/bing-s-mango-salsa",
      ["sweet mangoes", "lime zest", "lime (juice)", "mint leaves", "red onion", "salt", "black pepper", "sugar", "fresh chilli"]],

      "Healthy Vegan Red Velvet Brownies":["http://www.foodista.com/recipe/YGBD7J2L/healthy-vegan-red-velvet-brownies",
      ["almond extract", "apple sauce", "baking powder", "baking soda", "cooked beets", "brown sugar", "cocoa powder", "ground flaxseed", "red kidney beans", "salt", "vanilla extract"]],

      "Mussels & Clams in White Wine {Cozze e Vongole}":["http://www.foodista.com/recipe/TXM3X2KZ/mussels-clams-in-white-wine-cozze-e-vongole", ["cherry tomatoes", "chili flakes", "fresh parsley", "garlic", "olive oil", "salt", "white wine"]],

      "Drunken Noodles (Pad Kee Mao)":["https://www.foodista.com/recipe/3BKDFD6S/drunken-noodles-pad-kee-mao", ["canola oil", "fresh rice noodles", "zucchini", "japanese eggplant", "broccoli florets", "carrot", "dry tofu", "fresh peppercorns", "garlic", "chilies", "chili", "bbq sauce", "braggs liquid aminos", "tamari", "white soy sauce", "stevia", "water", "basil leaves", "vinegar"]],

      "Balsamic Roasted Vegetables":["https://www.foodista.com/recipe/LGRN2255/balsamic-roasted-vegetables",
      ["golden beets", "red beets", "fennel bulb", "red onion", "fingerling potatoes", "kabocha squash", "olive oil", "balsamic vinegar"]]
    ]

    let vegitarian = [
      "Naturally Sweet Apple Turnovers":
      ["http://www.foodista.com/recipe/TYW8P8Z5/naturally-sweet-apple-turnovers",
      ["diced apples", "brown sugar", "cream cheese", "egg yolk", "filo dough", "flour", "ground allspice", "ground cardamom", "ground cinnamon", "ground ginger", "lemon (juice)", "kosher salt", "maple syrup", "milk", "powdered sugar", "sugar", "unsalted butter", "frangelico"]],

      "Cheddar Chile Beer Bread":
      ["https://www.foodista.com/recipe/583RP66G/cheddar-chile-beer-bread",
      ["whole wheat flour", "flour", "baking powder", "salt", "dry mustard", "beer", "white shredded extra sharp cheddar cheese", "canned green chiles", "sesame seeds", "poppy seeds", "caraway seeds", "sea salt"]],

      "Easy Lemon Feta Greek Yogurt Dip":["http://fullbellysisters.blogspot.com/2016/01/easy-lemon-feta-greek-yogurt-dip.html",
      ["extra virgin olive oil", "feta cheese", "garlic clove", "lemon juice", "lemon zest", "plain greek yogurt", "red pepper flakes"]],

      "Blueberry Banana Pancakes":
      ["http://www.foodista.com/recipe/QNQXL7YN/blueberry-banana-pancakes",
      ["baking soda", "banana", "fresh blueberries", "egg whites", "plain greek yogurt", "salt", "sugar", "vanilla extract", "whole wheat pastry flour"]],

      "Caramelized Tofu & Gala Apple Salad":["http://www.foodista.com/recipe/SRNHDHGT/caramelized-tofu-gala-apple-salad",
      ["brown sugar", "butter", "extra firm tofu", "diced gala apple", "garlic", "green lettuce", "raw pecans", "water"]]
    ]

//    let allFoods = glutenFree.merging(vegitarian){(_, second) in second}

    // ***
    
    
    func findRecipeNames(){
        if (myNutrients == "glutenFree"){
            myDict = glutenFree
        } else if (myNutrients == "vegitarian"){
            myDict = vegitarian
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Preserves table view selection
        self.clearsSelectionOnViewWillAppear = false
        findRecipeNames()
        print(myDict)
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
