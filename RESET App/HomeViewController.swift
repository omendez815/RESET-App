//
//  HomeViewController.swift
//  RESET App
//
//  Created by Omar Mendez on 5/24/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.init(red: 0.5529, green: 0.8353, blue: 0.8275, alpha: 1.0).cgColor, UIColor.init(red: 0.9216, green: 0.8549, blue: 0.8314, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        //
        //141 213 211
        //235 218 212
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
