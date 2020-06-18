//
//  noteSlide.swift
//  Tuner
//
//  Created by Dan Lages on 23/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import UIKit

protocol NoteSlideDelegate: class {
    // protocol definition goes here
     func performSegueFromView(withIdentifier identifier: String)
}

class NoteSlide: UIView {

    var selectNoteDelegate: NoteSlideDelegate? = nil
    
    static weak var shared: NoteSlide?
    
    @IBOutlet weak var buttonNote: UIButton!
    
    
    @IBAction func buttonNote(_ sender: AnyObject) {
        selectNoteDelegate?.performSegueFromView(withIdentifier: "noteToNote")
    }
}

@IBDesignable class ButtonSpec: UIButton{

    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }

    override func prepareForInterfaceBuilder() {
        sharedInit()
    }

    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }

    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }

    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
    }
}

