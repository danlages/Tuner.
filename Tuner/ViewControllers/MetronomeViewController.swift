//
//  MetronomeViewController.swift
//  Tuner
//
//  Created by Dan Lages on 14/06/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

class MetronomeViewController: UIViewController {
    
    var radiusValue: CGFloat!

    @IBOutlet weak var visualisationButton: UIButton!
    
    @IBOutlet weak var adjustBPMSlider: UISlider!
    

    @IBAction func adjustBPMSliderAction(_ sender: UISlider) {
        
        visualisationButton.setTitle(String(Int(sender.value)), for: .normal)
    }
    
    @IBAction func closeButton(_ sender: Any) {
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        radiusValue = CGFloat(visualisationButton.bounds.size.width / 2)
        visualisationButton.layer.cornerRadius = radiusValue

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
