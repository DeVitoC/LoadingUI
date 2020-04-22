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
    var loadingGIF: IndeterminateLoadingView!
    public var loadingView: UIView!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        presentLoadingGIF()
    }
    
    /// This method sets up the loading screen GIF.
    public func presentLoadingGIF() {
        loadingGIF = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)) as? IndeterminateLoadingView
        view.addSubview(loadingGIF)
        loadingGIF.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loadingGIF.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadingGIF.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    /// This method displays an optional message briefly before disappearing.
    public func loadingGIFWillDisappear() {
        
    }

}
