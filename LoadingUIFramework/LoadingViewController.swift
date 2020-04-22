//
//  LoadingViewController.swift
//  LoadingUIFramework
//
//  Created by Christopher Devito on 4/22/20.
//  Copyright © 2020 Christopher Devito. All rights reserved.
//

import UIKit

/// The ViewController that presents a loading screen GIF.
public class LoadingViewController: UIViewController {
    
    /// A loading view GIF object.
    let loadingGIF = IndeterminateLoadingView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// This method sets up the loading screen GIF.
    public func presentLoadingGIF() {
        
    }
    
    /// This method displays an optional message briefly before disappearing.
    public func loadingGIFWillDisappear() {
        
    }

}
