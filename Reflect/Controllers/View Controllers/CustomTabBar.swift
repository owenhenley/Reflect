//
//  CustomTabBar.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class CustomTabBar: UIViewController {
    
        // MARK: - Properties
    //2
    var delegate : CustomTabBarDelegate?
    var indicatorShouldMove = false

        // MARK: - Outlets
    @IBOutlet weak var homePageIndicator    : UIView!
    @IBOutlet weak var profilePageIndicator : UIView!
    @IBOutlet weak var blurView             : UIView!
    @IBOutlet weak var homeButton           : UIButton!
    @IBOutlet weak var profileButton        : UIButton!
    
    // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        blurTabBar()
        pageChanged()
    }
    
    
        // MARK: - Actions
    @IBAction func homeTapped(_ sender: Any) {
        delegate?.homeButtonTapped()
        indicatorShouldMove = false
        pageChanged()
    }
    
    @IBAction func profileTapped(_ sender: Any) {
        delegate?.profileButtonTapped()
        indicatorShouldMove = true
        pageChanged()
    }
    
    
        // MARK: - Methods
    func blurTabBar() {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        visualEffectView.frame = self.blurView.bounds
        visualEffectView.translatesAutoresizingMaskIntoConstraints = true
        self.blurView.addSubview(visualEffectView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPageController" {
            let destinationVC = segue.destination as? MainPageView
            self.delegate = destinationVC
        }
    }
}


    // MARK: - TabBar Protocol
protocol CustomTabBarDelegate: class {
    func homeButtonTapped()
    func profileButtonTapped()
}


    // MARK: - Page Swiped Delegate
//1
extension CustomTabBar: PageSwipedDelegate {
    //2
    func pageChanged() {
        // controls the page indicator above the buttons
        if indicatorShouldMove {
            profilePageIndicator.backgroundColor = .white
            homePageIndicator.backgroundColor    = .clear
        } else {
            profilePageIndicator.backgroundColor = .clear
            homePageIndicator.backgroundColor    = .white
        }
    }
}
