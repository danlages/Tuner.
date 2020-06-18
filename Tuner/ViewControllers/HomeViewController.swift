//
//  HomeViewController.swift
//  Tuner
//
//  Created by Dan Lages on 23/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var ButtonCount = 6
    let scrollView = UIScrollView()
    let stackView = UIStackView()

    func performSegueFromView(withIdentifier identifier: String) {
        self.performSegue(withIdentifier: "noteToNote", sender:AnyObject.self)
            print("Hello")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<ButtonCount {
            let buttonFrame = CGRect(x: 20, y: 20 + (i * 45), width: 350, height: 350)
            let notebutton = ButtonSpec(frame: buttonFrame)
            notebutton.setTitle("Test", for: .normal)
            notebutton.cornerRadius = 175
            notebutton.backgroundColor = UIColor.red
            
        }
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "noteToNote" {
            
        }
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
