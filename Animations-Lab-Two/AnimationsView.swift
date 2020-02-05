//
//  AnimationsView.swift
//  Animations-Lab-Two
//
//  Created by casandra grullon on 2/4/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsView: UIView {
    //MARK: Objects
    public lazy var animationButtonsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: animationButtons())
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    public lazy var resetAnimateButtonsStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: resetAnimateButtons())
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 50
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    public lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("linear", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5062019825, blue: 0.7077280879, alpha: 1)
        return button
    }()
    public lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("ease in", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return button
    }()
    public lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("ease out", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return button
    }()
    public lazy var easeInOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("ease in out", for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        return button
    }()
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("reset", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.818012774, blue: 0.9189140201, alpha: 1)
        return button
    }()
    public lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("animate", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.818012774, blue: 0.9189140201, alpha: 1)
        return button
    }()
    public lazy var kirby1: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "kirby-star2")
        return image
    }()
    public lazy var kirby2: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "kirby-star2")
        return image
    }()
    public lazy var kirby3: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "kirby-star2")
        return image
    }()
    public lazy var kirby4: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "kirby-star2")
        return image
    }()
    
    //MARK: Inits
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        animationButtonsStackConstraints()
        resetAnimateStackConstraints()
        kirby1Constraints()
        kirby2Constraints()
        kirby3Constraints()
        kirby4Constraints()
    }
    
    //MARK: Stack Functions
    private func animationButtons() -> [UIButton] {
        let arrayOfButtons = [linearButton, easeInButton, easeOutButton, easeInOutButton]
        return arrayOfButtons
    }
    private func resetAnimateButtons() -> [UIButton] {
        let array = [resetButton, animateButton]
        return array
    }
    
    //MARK: Constraints
    private func animationButtonsStackConstraints() {
        addSubview(animationButtonsStack)
        animationButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationButtonsStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            animationButtonsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            animationButtonsStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            animationButtonsStack.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    private func resetAnimateStackConstraints() {
        addSubview(resetAnimateButtonsStack)
        resetAnimateButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resetAnimateButtonsStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30),
            resetAnimateButtonsStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            resetAnimateButtonsStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    private func kirby1Constraints() {
        addSubview(kirby1)
        kirby1.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            kirby1.topAnchor.constraint(equalTo: animationButtonsStack.bottomAnchor, constant: 10),
            kirby1.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            kirby1.widthAnchor.constraint(equalToConstant: 85),
            kirby1.heightAnchor.constraint(equalToConstant: 85)
        ])
    }
    private func kirby2Constraints() {
        addSubview(kirby2)
        kirby2.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            kirby2.topAnchor.constraint(equalTo: animationButtonsStack.bottomAnchor, constant: 10),
            kirby2.leadingAnchor.constraint(equalTo: kirby1.trailingAnchor, constant: 10),
            kirby2.widthAnchor.constraint(equalToConstant: 85),
            kirby2.heightAnchor.constraint(equalToConstant: 85)
        ])
    }
    private func kirby3Constraints() {
        addSubview(kirby3)
        kirby3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            kirby3.topAnchor.constraint(equalTo: animationButtonsStack.bottomAnchor, constant: 10),
            kirby3.leadingAnchor.constraint(equalTo: kirby2.trailingAnchor, constant: 10),
            kirby3.widthAnchor.constraint(equalToConstant: 85),
            kirby3.heightAnchor.constraint(equalToConstant: 85)
        ])
    }
    private func kirby4Constraints() {
        addSubview(kirby4)
        kirby4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            kirby4.topAnchor.constraint(equalTo: animationButtonsStack.bottomAnchor, constant: 10),
            kirby4.leadingAnchor.constraint(equalTo: kirby3.trailingAnchor, constant: 10),
            kirby4.widthAnchor.constraint(equalToConstant: 85),
            kirby4.heightAnchor.constraint(equalToConstant: 85)
        ])
    }


    
    
}
