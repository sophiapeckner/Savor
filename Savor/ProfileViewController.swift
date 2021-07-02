//
//  ProfileViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 7/1/21.
//

import UIKit

var myNutrients=""

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var glutenFreePlus: UILabel!
    
    @IBOutlet weak var vegetarianPlus: UILabel!
    
    @IBOutlet weak var NAPlus: UILabel!
    
    @IBOutlet weak var glutenFreeButton: UIButton!
    
    @IBOutlet weak var vegetarianButton: UIButton!
    
    @IBOutlet weak var NAButton: UIButton!
    
    @IBOutlet weak var titleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var buttonClicked = false
    
    @IBAction func glutenFreeTap(_ sender: UIButton) {
        if !buttonClicked{
            myNutrients = "glutenFree"
            glutenFreePlus.text = "✅"
            glutenFreeButton.backgroundColor = UIColor(red: 67/255, green: 97/255, blue: 39/255, alpha: 1)
            disableAllButtons()
            glutenFreeButton.isEnabled = true
            buttonClicked = true
        }else{
            myNutrients = ""
            glutenFreePlus.text = "➕"
            glutenFreeButton.backgroundColor = UIColor(red: 144/255, green: 77/255, blue: 31/255, alpha: 1)
            enableAllButtons()
            buttonClicked = false
        }
    }
    
    
    @IBAction func vegetarianTap(_ sender: Any) {
        if !buttonClicked{
            myNutrients = "vegetarian"
            vegetarianPlus.text = "✅"
            vegetarianButton.backgroundColor = UIColor(red: 67/255, green: 97/255, blue: 39/255, alpha: 1)
            disableAllButtons()
            vegetarianButton.isEnabled = true
            buttonClicked = true
        }else{
            myNutrients = ""
            vegetarianPlus.text = "➕"
            vegetarianButton.backgroundColor = UIColor(red: 144/255, green: 77/255, blue: 31/255, alpha: 1)
            enableAllButtons()
            buttonClicked = false
        }
    }
    
    @IBAction func NATap(_ sender: UIButton) {
        if !buttonClicked{
            myNutrients = "vegetarian"
            NAPlus.text = "✅"
            NAButton.backgroundColor = UIColor(red: 67/255, green: 97/255, blue: 39/255, alpha: 1)
            disableAllButtons()
            NAButton.isEnabled = true
            buttonClicked = true
        }else{
            myNutrients = ""
            NAPlus.text = "➕"
            NAButton.backgroundColor = UIColor(red: 144/255, green: 77/255, blue: 31/255, alpha: 1)
            enableAllButtons()
            buttonClicked = false
        }
    }
    
    func disableAllButtons(){
        glutenFreeButton.isEnabled = false
        vegetarianButton.isEnabled = false
        NAButton.isEnabled = false
    }
    
    func enableAllButtons(){
        glutenFreeButton.isEnabled = true
        vegetarianButton.isEnabled = true
        NAButton.isEnabled = true
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        print(myNutrients)
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
