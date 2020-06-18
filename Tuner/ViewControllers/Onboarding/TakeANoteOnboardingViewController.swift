//
//  TakeANoteOnboardingViewController.swift
//  Tuner
//
//  Created by Dan Lages on 24/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class TakeANoteOnboardingViewController: UIViewController {

    @IBOutlet weak var onBoardingImage: UIImageView!
    
    @IBOutlet weak var onBoardingTitle: UILabel!
    
    @IBOutlet weak var onBoardingDescription: UILabel!
    
    @IBOutlet weak var onBoardingEnterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onBoardingTitle.text = "Take a Note"
        onBoardingDescription.text = "To tune a string, select the corresponding note and start tuning."
        onBoardingEnterButton.setTitle("Next", for: .normal)

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
