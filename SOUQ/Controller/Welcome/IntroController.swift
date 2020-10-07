//
//  IntroController.swift
//  SOUQ
//
//  Created by Umair Hanif on 05/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class IntroController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewToPresent = IntroView()
        self.view = viewToPresent
        
        viewToPresent.skipButton.addTarget(self, action: #selector(skipListener), for: .touchUpInside)
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @objc func skipListener() {
        print("Skip clicked.")
        let controller = ChooseCountryController()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
}
