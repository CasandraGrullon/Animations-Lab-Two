//
//  ViewController.swift
//  Animations-Lab-Two
//
//  Created by casandra grullon on 2/4/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsController: UIViewController {

    private var animationsView = AnimationsView()
    
    var isSelected = true
    
    var originalConstraintKirby1: NSLayoutConstraint!
    var originalConstraintKirby2: NSLayoutConstraint!
    var originalConstraintKirby3: NSLayoutConstraint!
    var originalConstraintKirby4: NSLayoutConstraint!

    var topConstraintKirby1: NSLayoutConstraint!
    var topConstraintKirby2: NSLayoutConstraint!
    var topConstraintKirby3: NSLayoutConstraint!
    var topConstraintKirby4: NSLayoutConstraint!
    
    override func loadView() {
        view = animationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        animationsView.linearButton.addTarget(self, action: #selector(linearAnimation(_:)), for: .touchUpInside)
        animationsView.easeInButton.addTarget(self, action: #selector(easeInAnimation(_:)), for: .touchUpInside)
        animationsView.easeOutButton.addTarget(self, action: #selector(easeOutAnimation(_:)), for: .touchUpInside)
        animationsView.easeInOutButton.addTarget(self, action: #selector(easeInOutAnimation(_:)), for: .touchUpInside)
        animationsView.animateButton.addTarget(self, action: #selector(animateButtonPressed(_:)), for: .touchUpInside)
    }
    
    @objc
    public func linearAnimation(_ sender: UIButton) {
        if isSelected {
            animationsView.kirby1.isHidden = true
            isSelected = false
        } else {
            animationsView.kirby1.isHidden = false
            isSelected = true
        }
    }
    
    @objc
    public func easeInAnimation(_ sender: UIButton) {
        if isSelected {
            animationsView.kirby2.isHidden = true
            isSelected = false
        } else {
            animationsView.kirby2.isHidden = false
            isSelected = true
        }
    }
    
    @objc
    public func easeOutAnimation(_ sender: UIButton) {
        if isSelected {
            animationsView.kirby3.isHidden = true
            isSelected = false
        } else {
            animationsView.kirby3.isHidden = false
            isSelected = true
        }
    }
    
    @objc
    public func easeInOutAnimation(_ sender: UIButton) {
        if isSelected {
            animationsView.kirby4.isHidden = true
            isSelected = false
        } else {
            animationsView.kirby4.isHidden = false
            isSelected = true
        }
    }
    
    @objc
    public func resetButtonPressed(_ sender: UIButton) {
        
    }
    @objc
    public func animateButtonPressed(_ sender: UIButton) {
        linearAnimate()
    }
    
    public func linearAnimate() {
        topConstraintKirby1 = animationsView.kirby1.constraints.first
        originalConstraintKirby1 = animationsView.kirby1.constraints.first
        
        topConstraintKirby1.constant += 100
        
        UIView.animate(withDuration: 0.8, delay: 0.1, options: .curveLinear, animations: {
            self.animationsView.kirby1.transform = CGAffineTransform(translationX: 0.0, y: 500.0)
        }, completion: nil)
    }
    
    
}
