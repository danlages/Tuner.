//
//  MicrophoneOnboardingViewController.swift
//  Tuner
//
//  Created by Dan Lages on 25/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class MicrophoneOnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingImage: UIImageView!
    @IBOutlet weak var onboardingTitle: UILabel!
    @IBOutlet weak var onboardingDescription: UILabel!
    
    @IBOutlet weak var onboardingAccessButton: UIButton!
    
    @IBAction func onboardingAccessButtonAction(_ sender: Any) {
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onboardingTitle.text = "Microphone Access"
        onboardingDescription.text = "Tuner. requires microphone access when you are tuning to hear notes. Ensure the room is quiet when in use."
        onboardingAccessButton.setTitle("Next", for: .normal)
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
