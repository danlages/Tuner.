//
//  WelcomeOnboardingViewController.swift
//  Tuner
//
//  Created by Dan Lages on 24/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class WelcomeOnboardingViewController: UIViewController {

    @IBOutlet weak var onBoardingImage: UIImageView!
    
    @IBOutlet weak var onBoardingTitle: UILabel!
    
    @IBOutlet weak var onBoardingDesciption: UILabel!
    @IBOutlet weak var onBoardingNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onBoardingTitle.text = "About Tuner."
        onBoardingDesciption.text = "Tuner. is a simple and intuitive guitar tuner with a focus on design."
        onBoardingNextButton.setTitle("Next", for: .normal)
        // Do any additional setup after loading the view.
    }

}
