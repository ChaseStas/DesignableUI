//
//  DesignableBlurView.swift
//
//  Created by Stas Parechyn on 10/8/19.
//

import UIKit

@IBDesignable
open class DesignableBlurView: UIVisualEffectView {
    private var _style: UIBlurEffect.Style = .dark {
        didSet {
            let blur = UIBlurEffect(style: _style)
            self.effect = blur
        }
    }
    
    @IBInspectable
    public var style: Int = 0 {
        didSet {
            let range = (0...4).clamp(style)
            let newStyle = UIBlurEffect.Style(rawValue: range)!
            self._style = newStyle
        }
    }
}

extension ClosedRange {
    func clamp(_ value : Bound) -> Bound {
        return self.lowerBound > value ? self.lowerBound
            : self.upperBound < value ? self.upperBound
            : value
    }
}
