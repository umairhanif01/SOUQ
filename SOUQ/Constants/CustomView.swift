//
//  CustomView.swift
//  Clickit247-Driver
//
//  Created by Umair Hanif on 03/10/2020.
//  Copyright © 2020 Hixol. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable

class CustomView: UIView {
    
    @IBInspectable var border : Bool = false {
        didSet {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.systemRed.cgColor
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var shadow : Bool = false {
        didSet {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOpacity = 0.3
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
            self.layer.shadowRadius = 4
        }
    }
    
}
