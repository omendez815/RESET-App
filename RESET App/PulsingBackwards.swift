//
//  PulsingBackwards.swift
//  RESET App
//
//  Created by Omar Mendez on 5/28/20.
//  Copyright © 2020 Omar Mendez and Anna Woolridge. All rights reserved.
//

import UIKit

class PulsingBackwards: CALayer {
    var animationGroup = CAAnimationGroup()
    
    var initialPulseScale:Float = 0
    var nextPulseAfter:TimeInterval = 4
    var animationDuration:TimeInterval = 4
    var radius:CGFloat = 300
    var numberOfPulses:Float = Float.infinity
    
    override init(layer: Any){
        super.init(layer: layer)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init (numberOfPulses:Float = Float.infinity, radius:CGFloat, position:CGPoint){
        super.init()
        
        self.backgroundColor = UIColor.black.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radius = radius
        self.numberOfPulses = numberOfPulses
        self.position = position
        
        self.bounds = CGRect(x: 0, y: 0, width: radius*2, height: radius*2)
        self.cornerRadius = radius
        
        /*optimization*/
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            self.setupAnimationGroup()
            
            DispatchQueue.main.async {
                self.add(self.animationGroup, forKey: "pulse")
            }
        }
        setupAnimationGroup()
        
        self.add(animationGroup, forKey: "pulse")
    }
    func createScaleAnimation() -> CABasicAnimation{
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.autoreverses = true
        scaleAnimation.fromValue  = NSNumber(value: initialPulseScale)
        scaleAnimation.toValue = NSNumber(value: 1)
        scaleAnimation.duration = animationDuration
        
        scaleAnimation.repeatCount = 1
        return scaleAnimation
    }
    func createBackwardsAnimations() ->CABasicAnimation{
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = NSNumber(value:1)
        scaleAnimation.toValue = NSNumber(value: initialPulseScale)
        scaleAnimation.duration = animationDuration
        
        return scaleAnimation
    }
    
    func createOpacityAnimation()->CAKeyframeAnimation{
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.duration = animationDuration
        opacityAnimation.values = [0.2, 0.4, 0.8]
        opacityAnimation.keyTimes = [0, 0.2, 1]//fracions of total duration??
        return opacityAnimation
    }
    func setupAnimationGroup(){
        self.animationGroup = CAAnimationGroup()
        self.animationGroup.duration = animationDuration + nextPulseAfter
        self.animationGroup.repeatCount = numberOfPulses
        
        let defaultCurve = CAMediaTimingFunction(name: CAMediaTimingFunctionName.default)
        self.animationGroup.timingFunction = defaultCurve
        
        self.animationGroup.animations = [ createBackwardsAnimations(), createOpacityAnimation()]
    }
}
