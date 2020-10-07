//
//  AllCatView.swift
//  SOUQ
//
//  Created by Umair Hanif on 07/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class AllCatView: UIView {
    
    @IBOutlet var nav: NavigationView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if let nib = Bundle.main.loadNibNamed("AllCatView", owner: self), let nibView = nib.first as? UIView {
            nibView.frame = frame
            nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nibView)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
