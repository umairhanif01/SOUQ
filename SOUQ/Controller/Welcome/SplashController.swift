//
//  ViewController.swift
//  SOUQ
//
//  Created by Umair Hanif on 05/10/2020.
//  Copyright © 2020 LogicielHouse. All rights reserved.
//

import UIKit

class SplashController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewToPresent = SplashView()
        self.view = viewToPresent

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let controller = IntroController()
            controller.modalPresentationStyle = .fullScreen
            self.present(controller, animated: true, completion: nil)
        }
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}

