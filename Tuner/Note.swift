//
//  Note.swift
//  Tuner
//
//  Created by Dan Lages on 23/05/2020.
//  Copyright © 2020 Dan Lages. All rights reserved.
//

import Foundation
import AudioKit

class Note {

    enum standardTuning: Double, CaseIterable {
        case lowE = 82.41
        case a = 110.00
        case d = 146.83
        case g = 196.00
        case b = 246.94
        case highE = 329.63
    }
}

@IBDesignable class ButtonSpec : UIButton{

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

