//
//  DesignableButton.swift
//
//  Created by Stas Parechyn on 10/7/19.
//

import UIKit

@IBDesignable
open class DesignableButton: UIButton, DesignableUI {
    @IBInspectable
    public var rotation: Int {
        get {
            return 0
        }
        set {
            self.transform = CGAffineTransform.init(rotationAngle: CGFloat(newValue) * .pi / 180)
        }
    }
    
    @IBInspectable
    public var corner: Int {
        get {
            return 0
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }
}
