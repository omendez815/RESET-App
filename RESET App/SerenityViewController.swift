//
//  SerenityViewController.swift
//  RESET App
//
//  Created by Anna Woolridge on 5/24/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class SerenityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    var timer:Timer?
    var timeLeft = 10
    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimerFires), userInfo: nil, repeats: true)
    @objc func onTimerFires()
    {
        timeLeft -= 1
        timeLabel.text = "\(timeLeft) seconds left"

        if timeLeft <= 0 {
            timer?.invalidate()
            timer = nil
        }
    }
}
