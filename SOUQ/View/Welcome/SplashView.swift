//
//  SplashView.swift
//  SOUQ
//
//  Created by Umair Hanif on 05/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class SplashView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //load nib
        if let nib = Bundle.main.loadNibNamed("SplashScreen", owner: self),
            let nibView = nib.first as? UIView {
            nibView.frame = frame
            nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nibView)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    

}
