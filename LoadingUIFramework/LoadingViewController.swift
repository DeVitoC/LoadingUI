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
    var successLabel: UILabel!
    
    public override func viewDidLoad() {
        presentLoadingGIF()
        super.viewDidLoad()
        
    }
    
    func updateViews() {
        guard successLabel != nil else { return }
        successLabel.text = "Success"
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
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
        loadingGIF.isHidden = true
        
        successLabel = UILabel()
        successLabel.isHidden = false
        
        view.addSubview(successLabel)
        successLabel.translatesAutoresizingMaskIntoConstraints = false
        successLabel.text = "Success!"
        NSLayoutConstraint.activate([
            successLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            successLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            successLabel.heightAnchor.constraint(equalToConstant: 100),
            successLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        
        //viewDidAppear(true)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.dismiss(animated: true)
        }
    }

}
