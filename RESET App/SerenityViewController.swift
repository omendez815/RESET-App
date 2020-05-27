//
//  SerenityViewController.swift
//  RESET App
//
//  Created by Omar Mendez on 5/25/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit
class SerenityViewController: UIViewController {

    
    @IBOutlet weak var breatheButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.addPulse))
        tapGestureRecognizer.numberOfTouchesRequired = 1
        breatheButton.isUserInteractionEnabled = true
        breatheButton.addGestureRecognizer(tapGestureRecognizer)

      /*let animation = CAKeyframeAnimation(keyPath: "transform.scale")

         animation.values = [1.0, 1.2, 1.0]
         animation.keyTimes = [0, 0.5, 1]
         animation.duration = 1.5
         animation.repeatCount = Float.infinity
         view.layer.add(animation, forKey: nil)*/
        
        
        // SETUP GRADIENT
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.init(red: 0.9295, green: 0.8549, blue: 0.8117, alpha: 1.0).cgColor, UIColor.init(red: 0.9215, green: 0.8313, blue: 0.8941, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        //237 218 207
        //235 212 228
    }
    
    @objc func addPulse(){
        let pulse = Pulsing(numberOfPulses: 20, radius: 110, position: breatheButton.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.green.cgColor
        
        self.view.layer.insertSublayer(pulse, below: breatheButton.layer)
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
