//
//  WeatherPageViewController.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import UIKit

class WeatherPageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    var controllers: [UIViewController] = []
    let colors = [
        UIColor(red:1.00, green:0.22, blue:0.38, alpha:1.0),
        UIColor(red:0.20, green:0.45, blue:0.86, alpha:1.0),
        UIColor(red:0.14, green:0.82, blue:0.38, alpha:1.0),
        UIColor(red:0.00, green:0.82, blue:0.70, alpha:1.0),
        UIColor(red:0.21, green:0.21, blue:0.21, alpha:1.0)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        
        for (index, controller) in controllers.enumerated() {
            if(!colors.indices.contains(index)){
                break
            }
            controller.view.backgroundColor = colors[index]
        }
        
        setViewControllers([controllers[0]], direction: .forward, animated: true, completion: nil)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.index(of: viewController) else {
            return nil
        }
        
        
        if(index <= 0){
            return nil
        }
        
        return controllers[index-1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.index(of: viewController) else {
            return nil
        }
        
        if(index >= controllers.count - 1){
            return nil
        }
        
        return controllers[index+1]
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return controllers.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = controllers.first, let firstViewControllerIndex = controllers.index(of: firstViewController) else {
            return 0
        }
        
        return firstViewControllerIndex
    }

}
