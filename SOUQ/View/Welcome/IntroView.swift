//
//  IntroView.swift
//  SOUQ
//
//  Created by Umair Hanif on 05/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class IntroView: UIView {
    
    
    @IBOutlet var skipButton: UIButton!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //load nib
        if let nib = Bundle.main.loadNibNamed("IntroView", owner: self),
            let nibView = nib.first as? UIView {
            nibView.frame = frame
            nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nibView)
        }
        
        skipButton.layer.borderWidth = 3
        skipButton.layer.borderColor = UIColor.white.cgColor
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
