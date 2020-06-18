////
////  OnboardingViewController.swift
////  Tuner
////
////  Created by Dan Lages on 24/05/2020.
////  Copyright © 2020 Dan Lages. All rights reserved.
////
//
//import UIKit
//
//class OnboardingViewController: UIViewController {
//
//    @IBOutlet weak var onboardingScrollView: UIScrollView!
//    
//    @IBOutlet weak var onboardingPageSelector: UIPageControl!
//    
//    var onboardingDetails: [Onboarding] = []
//    
//    override func viewDidLoad() {
//            super.viewDidLoad()
//            // Do any additional setup after loading the view.
//            onboardingDetails = initiateButtons()
//            setupSlideScrollView(slides: onboardingDetails)
//            onboardingPageSelector.numberOfPages = onboardingDetails.count
//            onboardingPageSelector.currentPage = 0
//            view.bringSubviewToFront(onboardingPageSelector)
//        }
//        
//        func initiateButtons() -> [Onboarding] {
//            let welcome: Onboarding = Bundle.main.loadNibNamed("Onboarding", owner: self, options: nil)?.first as! Onboarding
//            welcome.onboardingTitle.text = "Welcome to Tuner."
//            welcome.onBoardingDescription.text = "Tuner. is a super simple and intuitive guitar tuner."
//            welcome.onboardingButton.isEnabled = false
//            welcome.onboardingButton.isHidden = true
//            
//            let selectNote: Onboarding = Bundle.main.loadNibNamed("Onboarding", owner: self, options: nil)?.first as! Onboarding
//            selectNote.onboardingTitle.text = "Take a Note"
//            selectNote.onBoardingDescription.text = "To tune a string, select the corresponding note and start tuning."
//            selectNote.onboardingButton.isEnabled = false
//            selectNote.onboardingButton.isHidden = true
//            selectNote.onboardingImage.image = UIImage(named: "SelectNoteOnboarding")
//            
//            
//            let tuneDown: Onboarding = Bundle.main.loadNibNamed("Onboarding", owner: self, options: nil)?.first as! Onboarding
//            tuneDown.onboardingTitle.text = "Tuning Down"
//            tuneDown.onBoardingDescription.text = "When Red is shown, the note is too high, tune the guitar down until you see green."
//            tuneDown.onboardingButton.isEnabled = false
//            tuneDown.onboardingButton.isHidden = true
//            
//            let tuneUp: Onboarding = Bundle.main.loadNibNamed("Onboarding", owner: self, options: nil)?.first as! Onboarding
//            tuneUp.onboardingTitle.text = "Hitting the High Notes"
//            tuneUp.onBoardingDescription.text = "When the note is yellow, tune the guitar up until the string is in tune."
//            tuneUp.onboardingButton.isEnabled = false
//            tuneUp.onboardingButton.isHidden = true
//            
//            let ready: Onboarding = Bundle.main.loadNibNamed("Onboarding", owner: self, options: nil)?.first as! Onboarding
//            ready.onboardingTitle.text = "Ready?"
//            ready.onBoardingDescription.text = "Select Enter to Begin"
//            
//        
//            
//           return [welcome, selectNote, tuneDown, tuneUp, ready]
//        }
//        
//        func setupSlideScrollView(slides : [Onboarding]) {
//            onboardingScrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
//            onboardingScrollView.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
//            onboardingScrollView.isPagingEnabled = true
//            
//            for i in 0 ..< onboardingDetails.count {
//                slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
//                onboardingScrollView.addSubview(onboardingDetails[i])
//            }
//        }
//        /*
//        // MARK: - Navigation
//
//        // In a storyboard-based application, you will often want to do a little preparation before navigation
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            // Get the new view controller using segue.destination.
//            // Pass the selected object to the new view controller.
//        }
//        */
//    }
//
