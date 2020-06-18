//
//  TakeCareOnboardingViewController.swift
//  
//
//  Created by Dan Lages on 25/05/2020.
//

import UIKit

class TakeCareOnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingTitleLabel: UILabel!
    
    @IBOutlet weak var onboardingButton: UIButton!
    
    @IBOutlet weak var onboardingDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        overrideUserInterfaceStyle = .light    
        onboardingTitleLabel.text = "Take Care When Tuning"
        onboardingDescriptionLabel.text = "Tuning too quickly could lead to broken strings."
        onboardingButton.setTitle("Next", for: .normal)
        
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
