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
        
    }
    
    
}
