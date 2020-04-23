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
    //var loadingGIF: UIImageView!
    
    public override func viewDidLoad() {
        presentLoadingGIF()
        super.viewDidLoad()
        
    }
    
    /// This method sets up the loading screen GIF.
    public func presentLoadingGIF() {
        //loadingGIF = (UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100)) as! IndeterminateLoadingView)
        loadingGIF = IndeterminateLoadingView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        view.addSubview(loadingGIF)
        loadingGIF.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loadingGIF.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadingGIF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingGIF.heightAnchor.constraint(equalToConstant: 100),
            loadingGIF.widthAnchor.constraint(equalToConstant: 100)
            ])
        loadingGIF.startAnimating()
    }
    
    /// This method displays an optional message briefly before disappearing.
    public func loadingGIFWillDisappear() {
        
    }

}
