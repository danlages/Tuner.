//
//  MainNavigationController.swift
//  Tuner
//
//  Created by Dan Lages on 25/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import Foundation
import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        
        if (UserDefaults.standard.value(forKey: "isFirstTime") as? String == nil)  {
            performSegue(withIdentifier: "presentOnboarding", sender: self)
        }
        else {
            performSegue(withIdentifier: "presentMainFlow", sender: self)
        }
        
    }
}
