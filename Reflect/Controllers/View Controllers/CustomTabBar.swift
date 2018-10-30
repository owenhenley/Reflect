//
//  CustomTabBar.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

protocol CustomTabBarDelegate: class {
    func homeButtonTapped()
    func profileButtonTapped()
}

class CustomTabBar: UIViewController {
    
    weak var delegate: CustomTabBarDelegate?

    @IBOutlet weak var pageIndicator: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func homeTapped(_ sender: Any) {
        delegate?.homeButtonTapped()
        #warning("Move Page Indicator")
        print("home tapped")
    }
    
    @IBAction func profileTapped(_ sender: Any) {
        delegate?.profileButtonTapped()
        #warning("Move Page Indicator")
        print("profile tapped")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPageController" {
            let destinationVC = segue.destination as? MainPageView
            self.delegate = destinationVC
        }
    }
}
