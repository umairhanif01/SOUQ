//
//  ChooseCountryController.swift
//  SOUQ
//
//  Created by Umair Hanif on 06/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class ChooseCountryController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewToPresent = ChooseCountryView()
        self.view = viewToPresent
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
}
