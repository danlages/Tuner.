//
//  MainNavigationViewController.swift
//  Tuner
//
//  Created by Dan Lages on 25/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import Foundation
import UIKit

class MainNavigationViewController : UIViewController {
    
    override func viewDidLoad() {
           super.viewDidLoad()
        
        if  (UserDefaults.standard.value(forKey: "isFirstTime") as? String == nil)  {
            initalViewController = storyboard.instantiateViewController (withIdentifier: "WelcomeOnboardingViewController") as!WelcomeOnboardingViewController
              window = UIWindow(windowScene: windowScene)
        }
        else {
            initalViewController = storyboard.instantiateViewController (withIdentifier: "NoteViewController") as! ViewController
            window = UIWindow(windowScene: windowScene)
        }
    }

}
