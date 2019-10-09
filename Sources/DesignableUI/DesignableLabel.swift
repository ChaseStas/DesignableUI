//
//  DesignableLabel.swift
//
//  Created by Stas Parechyn on 10/7/19.
//

import UIKit

@IBDesignable
open class DesignableLabel: UILabel, DesignableUI {
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
    
    @IBInspectable
    public var lineHeight: Int {
        get {
            return 0
        }
        set {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = CGFloat(newValue)

            let attrString = NSMutableAttributedString(string: self.text ?? "")
            attrString.addAttribute(.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))

            self.attributedText = attrString
        }
    }
}
