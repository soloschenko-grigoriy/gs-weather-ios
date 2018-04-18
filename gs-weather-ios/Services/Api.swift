//
//  Api.swift
//  gs-weather-ios
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import Foundation
import Alamofire

class API {
    static let url = "https://api.openweathermap.org/data/2.5/forecast"
    static let key = "040ea06d8a2a7832a752e449e92e7a9e" // should nerver ever be stored like that
    
    static func loadData(for city: String, onComplete: @escaping (_ items: [WeatherItem]) -> (), onError: @escaping (_ message: String) -> ()){
        let url = API.url + "?id=\(city)&APPID=\(API.key)";
        print(url)
        Alamofire.request(url).validate().responseJSON { response in
            switch response.result {
            case .success:
                let mappedData = API.map(loaded: response.result.value)
                onComplete(mappedData)
            case .failure(let error):
                onError(error.localizedDescription)
            }
        }
    }
    
    static func map(loaded data: Any?) -> [WeatherItem] {
        guard let res = data as? NSDictionary else {
            fatalError("Error parsing data")
        }
        
        guard let _ = res["list"] as? [NSDictionary] else {
            fatalError("Error parsing data")
        }
        
        // @todo Complete pasing and mapping
        
        return [
            WeatherItem(title: "Today", temperature: 40, condition: .cloud, description: "It's Cloudy!", humidity: 90, windStrength: 12.8, moonType: .full),
            WeatherItem(title: "Tomorrow", temperature: 50, condition: .sun, description: "Weee! It's Sunny!", humidity: 80, windStrength: 12.8, moonType: .full),
            WeatherItem(title: "3rd Day", temperature: 60, condition: .rain, description: "Take the umbrella!", humidity: 70, windStrength: 12.8, moonType: .full),
            WeatherItem(title: "4th Day", temperature: 70, condition: .storm, description: "ZZZZZZtormy!", humidity: 60, windStrength: 12.8, moonType: .full),
            WeatherItem(title: "5th Day", temperature: 80, condition: .wind, description: "Windyyyy!", humidity: 50, windStrength: 12.8, moonType: .full)
        ]
    }
}
