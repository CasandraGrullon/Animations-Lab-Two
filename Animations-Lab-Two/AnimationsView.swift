//
//  AnimationsView.swift
//  Animations-Lab-Two
//
//  Created by casandra grullon on 2/4/20.
//  Copyright © 2020 casandra grullon. All rights reserved.
//

import UIKit

class AnimationsView: UIView {
    
    public lazy var buttonStack: UIStackView = {
       let stack = UIStackView()
        return stack
    }()
    
    public lazy var linearButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "linear"
        button.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.5062019825, blue: 0.7077280879, alpha: 1)
        return button
    }()
    public lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "ease in"
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        return button
    }()
    public lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "ease out"
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        return button
    }()
    public lazy var easeInOutButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "ease in out"
        button.titleLabel?.numberOfLines = 0
        button.titleLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        linearButtonConstraints()
        easeInButtonConstraints()
        easeOutButtonConstraints()
        easeInOutButtonConstraints()
    }
    
    private func linearButtonConstraints() {
        addSubview(linearButton)
        linearButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            linearButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            linearButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    private func easeInButtonConstraints() {
        addSubview(easeInButton)
        easeInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeInButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            easeInButton.leadingAnchor.constraint(equalTo: linearButton.trailingAnchor, constant: 20)
        ])
    }
    private func easeOutButtonConstraints() {
        addSubview(easeOutButton)
        easeOutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            easeOutButton.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor, constant: 20)
        ])
    }
    private func easeInOutButtonConstraints() {
        addSubview(easeInOutButton)
        easeInOutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeInOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            easeInOutButton.leadingAnchor.constraint(equalTo: easeOutButton.trailingAnchor, constant: 20)
        ])
    }
}
