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
   
    var timeLeft = 20
    var countdownTimer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
       /* let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.addPulse))
        tapGestureRecognizer.numberOfTouchesRequired = 1
        breatheButton.isUserInteractionEnabled = true
        breatheButton.addGestureRecognizer(tapGestureRecognizer)*/

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
    
    @IBAction func pressBreath(_ sender: UIButton) {
        
         var countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countMethod), userInfo: nil, repeats: true)
        
    }
    @objc func countMethod(){
           timeLeft -= 1
           //countdownLabel.text = "\(timeLeft/60) minutes \(timeLeft%60) seconds left"
           
        if timeLeft % 8 == 0{
            addPulse()
            breatheButton.setTitle("BREATHE IN", for: .normal)
        }
        else if timeLeft % 4 == 0{
            addBackPulse()
            breatheButton.setTitle("BREATHE OUT", for: .normal)
        }
        
           if timeLeft <= 0 {
               countdownTimer.invalidate()
               //countdownTimer = nil
               //countdownLabel.text = "DONE!"
           }
       }
    @objc func addPulse(){
        let pulse = Pulsing(numberOfPulses: 1, radius: 200, position: breatheButton.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.green.cgColor
        
        self.view.layer.insertSublayer(pulse, below: breatheButton.layer)
        
        
    
    }
    @objc func addBackPulse(){
        
        let pulse2 = PulsingBackwards(numberOfPulses: 1, radius: 200, position: breatheButton.center)
        pulse2.animationDuration = 0.8
        //pulse2.backgroundColor = UIColor.blue.cgColor
        self.view.layer.insertSublayer(pulse2, below: breatheButton.layer)
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
