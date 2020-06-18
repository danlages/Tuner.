//
//  ViewController.swift
//  Tuner
//
//  Created by Dan Lages on 21/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit
import AudioKit
import AVFoundation

class ViewController: UIViewController {

    var microphone: AKMicrophone!
    var microphoneSession: AVAudioSession!
    var silenceBooster: AKBooster!
    var soundTracker: AKFrequencyTracker!
    var radiusValue: CGFloat!
    var timeInterval: Double!
    var oldBorderWidth: CGFloat!
    var newBorderWidth: CGFloat!
    var microphonePermisionGranted: Bool!
    var selectedFrequency: Double!
    var animationDuration: Double!

    @IBOutlet var buttonNote: UIButton!
    @IBOutlet var labelFrequencyOutput: UILabel!
    @IBOutlet var labelDialogOutput: UILabel!
    @IBOutlet weak var creditsButtonOutput: UIButton!
    @IBOutlet weak var instructionButtonOutput: UIButton!
    
    @IBOutlet var highENoteButtonOutput: UIButton!
    @IBOutlet var aNoteButtonOutput: UIButton!
    @IBOutlet var dNoteButtonOutput: UIButton!
    @IBOutlet var gNoteButtonOutput: UIButton!
    @IBOutlet var bNoteButtonOutput: UIButton!
    @IBOutlet var lowENoteButtonOutput: UIButton!
   
    @IBAction func highENote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.highE.rawValue
        buttonNote.setTitle(String("E"), for: .normal)
        highENoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
        
    @IBAction func aNote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.a.rawValue
        buttonNote.setTitle(String("A"), for: .normal)
        aNoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
    
    @IBAction func dNote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.d.rawValue
        buttonNote.setTitle(String("D"), for: .normal)
        dNoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
    
    @IBAction func gNote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.g.rawValue
        buttonNote.setTitle(String("G"), for: .normal)
        gNoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
    
    @IBAction func bNote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.b.rawValue
        buttonNote.setTitle(String("B"), for: .normal)
        bNoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
    
    @IBAction func lowENote(_ sender: Any) {
        defineButtonColours()
        selectedFrequency = Note.standardTuning.lowE.rawValue
        buttonNote.setTitle(String("E"), for: .normal)
        lowENoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
    }
    
    
    func defineButtonColours() {
        highENoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
        aNoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
        dNoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
        gNoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
        bNoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
        lowENoteButtonOutput.setTitleColor(UIColor(named: "customLabelColor"), for: .normal)
    }
    
    func defineOptionButtonColours() {
        creditsButtonOutput.tintColor = UIColor(named: "customLabelColor")
        instructionButtonOutput.tintColor = UIColor(named: "customLabelColor")
    }
    
      
    
    func setUpView() {
        labelDialogOutput.text = ""
        buttonNote.setTitle(String("E"), for: .normal)
        defineOptionButtonColours()
        defineButtonColours()
        AKSettings.audioInputEnabled = true
        microphone = AKMicrophone()!
        lowENoteButtonOutput.setTitleColor(UIColor.orange, for: .normal)
        selectedFrequency = Note.standardTuning.lowE.rawValue
        soundTracker = AKFrequencyTracker(microphone)
        silenceBooster = AKBooster(soundTracker, gain: 0)
        radiusValue = CGFloat(buttonNote.bounds.size.width / 2)
        buttonNote.layer.cornerRadius = radiusValue
        oldBorderWidth = 0
        newBorderWidth = 0
        timeInterval = 0.2
        animationDuration = 0.2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        do {
            try AudioKit.stop()
        } catch {
            print("Unable to stop Audio Process")
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        AudioKit.output = silenceBooster
        do {
            try AudioKit.start()
        } catch {
            print("Tuner is Broken")
        }
        Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: #selector(ViewController.updateTunerValue), userInfo: nil, repeats: true)
    }
    
    func animateTuner() {
        let borderWidth:CABasicAnimation = CABasicAnimation(keyPath: "borderWidth")
        borderWidth.fromValue = oldBorderWidth
        borderWidth.toValue = newBorderWidth
        borderWidth.duration = animationDuration
        buttonNote.layer.add(borderWidth, forKey: "Width")
        oldBorderWidth = newBorderWidth
    }
    
    func animateDialog() {
        UIView.animate(withDuration: 1.0) {
            self.labelDialogOutput.alpha = 1.0
            self.labelDialogOutput.alpha = 0
        }
    }
    
    func animateInTuneDialog() {
        UIView.animate(withDuration: 2.0) {
            self.labelDialogOutput.alpha = 1.0
            self.labelDialogOutput.alpha = 0
        }
    }
    
    @objc func updateTunerValue(noteValue: Double) {
        let lowRange = selectedFrequency - 100
        let highRange = selectedFrequency + 10
        let trackingValue = soundTracker.frequency
        buttonNote.layer.borderWidth = CGFloat(newBorderWidth)
        
        if soundTracker.amplitude > 0.001 {
            animateTuner()
            if (trackingValue < selectedFrequency + 1 && trackingValue > selectedFrequency - 1 ) {
                buttonNote.layer.borderColor = UIColor.green.cgColor
                newBorderWidth = radiusValue
                labelFrequencyOutput.text = String(format: "%0.1f", soundTracker.frequency)
                labelDialogOutput.text = "In Tune!"
                animateInTuneDialog()
                animationDuration = 0.2
            }
            else if (trackingValue > lowRange && trackingValue < highRange ) {
                let priorPercentage = (trackingValue - lowRange) / (highRange - lowRange)
                labelFrequencyOutput.text = String(format: "%0.1f", soundTracker.frequency)
                if (trackingValue > selectedFrequency + 0.50) {
                    newBorderWidth = 10
                    buttonNote.layer.borderColor = UIColor.red.cgColor
                    labelDialogOutput.text = "Too High"
                    animateDialog()
                    animationDuration = 0.2
                }
                else if (trackingValue < selectedFrequency - 0.50 ) {
                    let animationValue = ((175 - 0) * (priorPercentage) + 0)
                    buttonNote.layer.borderColor = UIColor.orange.cgColor
                    newBorderWidth = CGFloat(animationValue)
                    labelDialogOutput.text = "Too Low"
                    animateDialog()
                    animationDuration = 0.2
                }
            }
        }
    }
}
