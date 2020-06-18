//
//  TuneDownOnboardingViewController.swift
//  Tuner
//
//  Created by Dan Lages on 24/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class TuneDownOnboardingViewController: UIViewController {
    @IBOutlet weak var onboardingImage: UIImageView!
    
    @IBOutlet weak var onboardingTitle: UILabel!
    @IBOutlet weak var onboardingDescription: UILabel!
    @IBOutlet weak var onboardingNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onboardingTitle.text = "Tuning it Down"
        onboardingDescription.text = "When red is shown, the note is too high, tune the guitar string down until you see green."
        onboardingNextButton.setTitle("Next", for: .normal)

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

}
