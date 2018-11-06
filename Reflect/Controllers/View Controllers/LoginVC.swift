//
//  LoginVC.swift
//  Reflect
//
//  Created by Owen Henley on 10/7/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var blurView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurBackground()
    }
    
    @IBAction func exitTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func blurBackground() {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        visualEffectView.frame = self.blurView.bounds
        visualEffectView.translatesAutoresizingMaskIntoConstraints = true
        self.blurView.addSubview(visualEffectView)
    }

}
