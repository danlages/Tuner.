//
//  TuneUpOnboardingViewController.swift
//  Tuner
//
//  Created by Dan Lages on 24/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class TuneUpOnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingImage: UIImageView!
    @IBOutlet weak var onboardingTitle: UILabel!
    @IBOutlet weak var onboardingDescription: UILabel!
    @IBOutlet weak var onboardingNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onboardingTitle.text = "Hitting the High Notes"
        onboardingDescription.text = "When the note is orange, tune the guitar string up until the string is in tune."
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
