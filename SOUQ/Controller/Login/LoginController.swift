//
//  LoginController.swift
//  SOUQ
//
//  Created by Umair Hanif on 06/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = LoginView()
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
}
