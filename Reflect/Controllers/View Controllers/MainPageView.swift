//
//  MainPageView.swift
//  Reflect
//
//  Created by Owen Henley on 10/29/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

//1
protocol PageSwipedDelegate: class {
    func pageChanged()
}

class MainPageView: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
        // MARK: - Properties
    // 3
    var pageSwipeDelegate: PageSwipedDelegate?
    var pageControl = UIPageControl()
    lazy var pageViews: [UIViewController] = {
        return [
            self.newVC(viewController: "meditations"),
            self.newVC(viewController: "profile")
        ]}()

    
        // MARK: - LifeCycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        self.delegate = self
        
        if let firstViewController = pageViews.first {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    
        // MARK: - Methods
    func newVC(viewController: String) -> UIViewController {
        return UIStoryboard(name: "PageViewContainer", bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let pageIndex = pageViews.index(of: viewController) else { return nil }
        
        let previousIndex = pageIndex - 1
        guard previousIndex >= 0 else { return nil }
        
        return pageViews[previousIndex]
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let pageIndex = pageViews.index(of: viewController) else { return nil }
        
        let nextIndex = pageIndex + 1
        let viewSceneCount = pageViews.count
        
        guard viewSceneCount != nextIndex else { return nil }
        guard viewSceneCount > nextIndex else { return nil }
        
        return pageViews[nextIndex]
    }
}

extension MainPageView: CustomTabBarDelegate {
    
    func homeButtonTapped() {
        toPreviousArticle()
        //2
        pageSwipeDelegate?.pageChanged()
    }
    
    func profileButtonTapped() {
        toNextArticle()
        //2
        pageSwipeDelegate?.pageChanged()
    }
}


    // MARK: - TabBar Button Functions
extension UIPageViewController {
    
    // Functions for clicking next and previous in the navbar
    @objc func toNextArticle(){
        guard let currentViewController = self.viewControllers?.first else { return }
        
        guard let nextViewController = dataSource?.pageViewController( self, viewControllerAfter: currentViewController ) else { return }
        
        // Has to be set like this, since else the delgates for the buttons won't work
        setViewControllers([nextViewController], direction: .forward, animated: true, completion: { completed in self.delegate?.pageViewController?(self, didFinishAnimating: true, previousViewControllers: [], transitionCompleted: completed) })
    }
    
    @objc func toPreviousArticle(){
        guard let currentViewController = self.viewControllers?.first else { return }
        
        guard let previousViewController = dataSource?.pageViewController( self, viewControllerBefore: currentViewController ) else { return }
        
        // Has to be set like this, since else the delgates for the buttons won't work
        setViewControllers([previousViewController], direction: .reverse, animated: true, completion:{ completed in self.delegate?.pageViewController?(self, didFinishAnimating: true, previousViewControllers: [], transitionCompleted: completed) })
    }
}
