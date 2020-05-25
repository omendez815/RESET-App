//
//  EncouragementViewController.swift
//  RESET App
//
//  Created by Omar Mendez on 5/24/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class EncouragementViewController: UIViewController {

    @IBOutlet weak var imageHolder: UIImageView!
    
    @IBOutlet weak var moreButton: UIButton!
    var photos = [String]()
    var randphoto = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        //104 143 146
        //168 209 175
        gradientLayer.colors = [UIColor.init(red: 0.4078, green: 0.5607, blue: 0.5725, alpha: 1.0).cgColor, UIColor.init(red: 0.6588, green: 0.8196, blue: 0.6863, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        
        //Button design
        //moreButton.layer.borderColor = CGColor(
        moreButton.layer.borderWidth = 0.9
        
        // Do any additional setup after loading the view.
        photos = ["puppy1", "puppy2", "puppy3", "puppy4"]
        loadAnotherPhoto(self)
        //randphoto = photos[Int.random(in: 0 ..< photos.count-1)]
        //imageHolder.image = UIImage(named:  randphoto)
    }
    
    
    @IBAction func loadAnotherPhoto(_ sender: Any) {
        randphoto = photos[Int.random(in: 0 ..< photos.count-1)]
        imageHolder.image = UIImage(named:  randphoto)
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
