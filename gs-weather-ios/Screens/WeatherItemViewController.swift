//
//  WeatherItemViewController.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {
    let weather: WeatherItem
    
    init(weather: WeatherItem) {
        self.weather = weather
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let itemView = Bundle.main.loadNibNamed("WeatherItemView", owner: WeatherItemView.self, options: nil)?.first as? WeatherItemView else {
            fatalError("Cannot load WeatherItemView")
        }
        
        itemView.set(weather: weather)
        
        view.addSubview(itemView)
        itemView.center = view.center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
