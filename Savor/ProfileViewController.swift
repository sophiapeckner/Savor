//
//  ProfileViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 7/1/21.
//

import UIKit

var myNutrients=""

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var vegitarianButton: UIButton!
    
    @IBOutlet weak var titleText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func glutenFreeTap(_ sender: UIButton) {
        myNutrients = "glutenFree"
    }
    
    @IBAction func vegitarianTap(_ sender: UIButton) {
        myNutrients = "vegitarian"
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
