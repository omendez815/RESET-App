//
//  EncouragementViewController.swift
//  RESET App
//
//  Created by Omar Mendez on 5/24/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class EncouragementViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var imageHolder: UIImageView!
    
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var moreButton: UIButton!
    var photos = [String]()
    var randphoto = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        //104 143 146
        //168 209 175
        //234 244 193
        gradientLayer.colors = [UIColor.init(red: 0.9215, green: 0.9568, blue: 0.7568 , alpha: 1.0).cgColor, UIColor.init(red: 0.6588, green: 0.8196, blue: 0.6863, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        /*
        self.scroller.minimumZoomScale = 1.0
        self.scroller.maximumZoomScale = 2.0
        */
        
        //Button design
        //moreButton.layer.borderColor = UIColor.white.cgColor
        //moreButton.layer.backgroundColor=UIColor.darkGray.cgColor
        //moreButton.layer.borderWidth = 4.0
        
        photos = ["puppy1", "puppy2", "puppy3", "puppy4", "smile1", "smile2", "smile3", "smile4", "smile5", "smile6", "smile7", "smile8", "smile9", "smile10", "smile11", "anna1", "anna2", "anna3", "anna4", "anna5", "anna6", "anna7", ]
        loadAnotherPhoto(self)

    }
    /*
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.imageHolder
    }
    */
    
    @IBAction func loadAnotherPhoto(_ sender: Any) {
        randphoto = photos[Int.random(in: 0 ..< photos.count)]
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
