//
//  DesignableView.swift
//
//  Created by Stas Parechyn on 10/8/19.
//

import UIKit

@IBDesignable
open class DesignableView: UIView, DesignableUI {
    @IBInspectable
    public var corner: Int {
        get {
            return 0
        }
        set {
            self.layer.cornerRadius = CGFloat(newValue)
        }
    }

    @IBInspectable
    public var rotation: Int {
        get {
            return 0
        }
        set {
            self.transform = CGAffineTransform.init(rotationAngle: CGFloat(newValue) * .pi / 180)
        }
    }
}
