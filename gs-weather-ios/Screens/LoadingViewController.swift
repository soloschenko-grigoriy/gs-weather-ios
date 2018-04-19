//
//  LoadingViewController.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    let pageVC = WeatherPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        guard let loadingView = Bundle.main.loadNibNamed("Loading", owner: self, options: nil)?.first as? UIView else {
            fatalError("Cannot load WeatherItemView")
        }
        
        view.addSubview(loadingView)
        loadingView.center = view.center

        // @todo Request location from user
        API.loadData(for: "5128638", onComplete: dataLoaded, onError: dataLoadError)
        
    }
    
    func dataLoaded(weatherItems: [WeatherItem]) {
        for item in weatherItems {
            pageVC.controllers.append(WeatherViewController(weather: item))
        }
        
        present(pageVC, animated: true, completion: nil)
    }
    
    func dataLoadError(error: String) {
        // @todo Add proper error handling
        print(error)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
