//
//  WeatherItemView.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import UIKit

class WeatherItemView: UIView {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var conditions: UIImageView!
    @IBOutlet weak var descript: UILabel!
    @IBOutlet weak var humidityIcon: UIImageView!
    @IBOutlet weak var humidityValue: UILabel!
    @IBOutlet weak var windIcon: UIImageView!
    @IBOutlet weak var windValue: UILabel!
    @IBOutlet weak var moonIcon: UIImageView!
    @IBOutlet weak var moonValue: UILabel!
    
    
    func set(weather: WeatherItem) {
        title.text = weather.title
        temperature.text = "\(weather.temperature)"
        descript.text = weather.description
        humidityIcon.image = UIImage(named: "humidity")
        humidityValue.text = "\(weather.humidity)"
        windValue.text = "\(weather.windStrength)"
        moonValue.text = weather.moonType == .full ? "Full" : "Part"
        windIcon.image = UIImage(named: "wind")
        moonIcon.image = UIImage(named: "moon")
        
        switch weather.condition {
        case .cloud:
            conditions.image = UIImage(named: "cloud")
        case .rain:
            conditions.image = UIImage(named: "rain")
        case .snow:
            conditions.image = UIImage(named: "snowflake")
        case .storm:
            conditions.image = UIImage(named: "storm")
        case .sun:
            conditions.image = UIImage(named: "sun")
        case .wind:
            conditions.image = UIImage(named: "wind")
        }
        
        conditions.setImageColor(color: .white)
        humidityIcon.setImageColor(color: .white)
        windIcon.setImageColor(color: .white)
        moonIcon.setImageColor(color: .white)
        
        backgroundColor = .clear
    }
}
