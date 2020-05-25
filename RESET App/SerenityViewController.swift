//
//  SerenityViewController.swift
//  RESET App
//
//  Created by Omar Mendez on 5/25/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class SerenityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // SETUP GRADIENT
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.init(red: 0.9295, green: 0.8549, blue: 0.8117, alpha: 1.0).cgColor, UIColor.init(red: 0.9215, green: 0.8313, blue: 0.8941, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        //237 218 207
        //235 212 228
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
