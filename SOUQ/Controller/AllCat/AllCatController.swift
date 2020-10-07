//
//  AllCatController.swift
//  SOUQ
//
//  Created by Umair Hanif on 07/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class AllCatController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewToPresent = AllCatView()
        self.view = viewToPresent
        
//        viewToPresent.nav.changeStatusBarBGColor(color: Helper.colorLightBlue)
//        viewToPresent.nav.statusBarBGView.backgroundColor = Helper.colorLightBlue
        
    }
    

}
