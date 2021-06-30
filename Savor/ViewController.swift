//
//  ViewController.swift
//  Savor
//
//  Created by Sophia Peckner on 6/29/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButton(){
        let vc = RecipeTableViewController()
        vc.models = [
            ("Fruit", {
                print("here")
            })
        ]
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    func showViewController(){
//        let newViewController = NewViewController()
//        self.navigationController?.pushViewController(newViewController, animated: true)
//    }
}

