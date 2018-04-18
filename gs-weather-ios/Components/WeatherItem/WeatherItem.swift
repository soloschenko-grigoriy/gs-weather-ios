//
//  WeatherItem.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import Foundation

enum WeatherCondition {
    case sun
    case rain
    case cloud
    case storm
    case snow
    case wind
}

enum WeatherMoonType {
    case full
    case part
}

struct WeatherItem {
    let title: String
    let temperature: Int
    let condition: WeatherCondition
    let description: String
    let humidity: Int
    let windStrength: Float
    let moonType: WeatherMoonType
}
