//
//  ViewController.swift
//  LoadingUI
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit
import LoadingUIFramework

class ViewController: UIViewController {
    
    let loadingScreen = LoadingViewController()
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        
//        //present(loadingScreen, animated: true) //{
//            // to be implemented
//            
//            // wait for process (simulated here to a sleep statement
//            
//            // call loadingGIFwilldisappear
//        //}
//        
//        
//    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        present(loadingScreen, animated: true) {
            // to be implemented
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                self.loadingScreen.loadingGIFWillDisappear()
            }
            
        }
    }
    
}

