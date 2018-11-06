//
//  SignUpVC.swift
//  Reflect
//
//  Created by Owen Henley on 10/7/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    
        // MARK: - Properties

        // MARK: - Outlets
    
    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    
        // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurBackground()
    }
    
    
        // MARK: - Actions
    
    @IBAction func exitTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func signUpTapped(_ sender: Any) {
        
    }
    
    
        // MARK: - Methods
    
    func blurBackground() {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        visualEffectView.frame = self.blurView.bounds
        visualEffectView.translatesAutoresizingMaskIntoConstraints = true
        self.blurView.addSubview(visualEffectView)
    }

}
