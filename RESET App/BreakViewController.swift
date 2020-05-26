//
//  SerenityViewController.swift
//  RESET App
//
//  Created by Anna Woolridge on 5/24/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class BreakViewController: UIViewController {


    var timeLeft = 20
    var countdownTimer = Timer()
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var countdownLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.init(red: 0.7098, green: 0.6118, blue: 0.8549, alpha: 1.0).cgColor, UIColor.init(red: 0.8784, green: 0.8627, blue: 0.8941, alpha: 1.0).cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        //181 156 218
        //224 220 228
        
        //make the start button a circle button
        startButton.layer.cornerRadius = 0.5 * startButton.bounds.size.width
        startButton.clipsToBounds = true
        startButton.layer.backgroundColor = UIColor.white.cgColor
        
        //What starting message do we want?
        //What interval of time do we want? 5 min? 10 min?
        countdownLabel.text = "Take a \(timeLeft) second break."
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countMethod), userInfo: nil, repeats: true)
    }

    
    @objc func countMethod(){
        timeLeft -= 1
        countdownLabel.text = "\(timeLeft) seconds left"
        
        if timeLeft <= 0 {
            countdownTimer.invalidate()
            //countdownTimer = nil
            countdownLabel.text = "DONE!"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    /*var timer:Timer?
    var timeLeft = 10
    var timer = Timer.scheduledTimer(timeInterval: 10.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: false)
    
    @objc func onTimerFires()
    {
        timeLeft -= 1
        timeLabel.text = "\(timeLeft) seconds left"

        if timeLeft <= 0 {
            timer.invalidate()
            //timer = nil
            timeLabel.text = "DONE!"
        }
    }*/
}

