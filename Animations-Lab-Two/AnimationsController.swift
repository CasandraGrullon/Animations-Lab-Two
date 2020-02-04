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
    
    override func loadView() {
        view = animationsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    
}
