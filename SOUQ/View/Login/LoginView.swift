//
//  LoginView.swift
//  SOUQ
//
//  Created by Umair Hanif on 06/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //load nib
        if let nib = Bundle.main.loadNibNamed("LoginView", owner: self),
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
