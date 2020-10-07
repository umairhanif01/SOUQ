//
//  NavigationView.swift
//  SOUQ
//
//  Created by Umair Hanif on 07/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class NavigationView: UIView {
    
    
    @IBOutlet private var statusBarBGView: UIView!
    @IBOutlet private var titleLbl: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if let nib = Bundle.main.loadNibNamed("NavigationView", owner: self), let nibView = nib.first as? UIView {
            nibView.frame = frame
            nibView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(nibView)
        }
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func changeStatusBarBGColor(color: UIColor) {
        self.statusBarBGView.backgroundColor = color
    }
    
}
