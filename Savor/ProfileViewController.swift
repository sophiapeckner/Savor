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
    
    
    @IBAction func glutenFreeTap(_ sender: UIButton) {
        myNutrients = "glutenFree"
        glutenFreePlus.text = "✅"
        disableAllButtons()
    }
    
    
    @IBAction func vegetarianTap(_ sender: Any) {
        myNutrients = "vegetarian"
        vegetarianPlus.text = "✅"
        disableAllButtons()
    }
    
    @IBAction func NATap(_ sender: UIButton) {
        NAPlus.text = "✅"
        disableAllButtons()
    }
    
    func disableAllButtons(){
        glutenFreeButton.isEnabled = false
        vegetarianButton.isEnabled = false
        NAButton.isEnabled = false
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
