//
//  WeatherItemViewTest.swift
//  gs-weather-iosTests
//
//  Created by Gregory Soloshchenko on 4/18/18.
//  Copyright © 2018 Gregory Soloshchenko. All rights reserved.
//

import XCTest
@testable import gs_weather_ios

class WeatherItemViewTest: XCTestCase {
    var view: WeatherItemView?
    
    let fakeWeather = WeatherItem(
        title: "FakeWeather",
        temperature: 90,
        condition: .cloud,
        description: "Fake description",
        humidity: 90,
        windStrength: 10,
        moonType: .full
    )
    
    override func setUp() {
        super.setUp()
        guard let view = Bundle.main.loadNibNamed("WeatherItemView", owner: WeatherItemView.self, options: nil)?.first as? WeatherItemView else {
            fatalError("Cannot load WeatherItemView")
        }
        
        self.view = view
    }
    
    override func tearDown() {
        view = nil

        super.tearDown()
    }
    
    func testSetDataTitle() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        view.set(weather: fakeWeather)
        
        XCTAssertEqual(view.title.text, fakeWeather.title, "Title of Weather Item should be the same as Weather Model")
    }
    
    func testSetDataTemperature() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        view.set(weather: fakeWeather)
        
        XCTAssertEqual(view.temperature.text, "\(fakeWeather.temperature)", "Temperature of Weather Item should be the same as Weather Model")
    }
    
    func testSetDataDescription() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        view.set(weather: fakeWeather)
        
        XCTAssertEqual(view.descript.text, fakeWeather.description, "Description of Weather Item should be the same as Weather Model")
    }
    
    func testSetDataWind() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        view.set(weather: fakeWeather)
        
        XCTAssertEqual(view.windValue.text, "\(fakeWeather.windStrength)", "Wind of Weather Item should be the same as Weather Model")
    }
    
    func testSetDataHumidity() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        view.set(weather: fakeWeather)
        
        XCTAssertEqual(view.humidityValue.text, "\(fakeWeather.humidity)", "Humidity of Weather Item should be the same as Weather Model")
    }
    
    func testSetDataConditionsCloud() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .cloud,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "cloud")!), "Condition's image of Weather Item should reflect Weather Model (cloud)")
    }
    
    func testSetDataConditionsSun() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .sun,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "sun")!), "Condition's image of Weather Item should reflect Weather Model (sun)")
    }
    
    func testSetDataConditionsRain() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .rain,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "rain")!), "Condition's image of Weather Item should reflect Weather Model (rain)")
    }
    
    func testSetDataConditionsSnow() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .snow,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "snowflake")!), "Condition's image of Weather Item should reflect Weather Model (snow)")
    }
    
    func testSetDataConditionsStorm() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .storm,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "storm")!), "Condition's image of Weather Item should reflect Weather Model (storm)")
    }
    
    func testSetDataConditionsWind() {
        guard let view = self.view else {
            fatalError("Cannot unwrap test view")
        }
        
        // cloud
        view.set(weather: WeatherItem(
            title: "FakeWeather",
            temperature: 90,
            condition: .wind,
            description: "Fake description",
            humidity: 90,
            windStrength: 10,
            moonType: .full
        ))
        
        XCTAssertEqual(UIImagePNGRepresentation(view.conditions.image!), UIImagePNGRepresentation(UIImage(named: "wind")!), "Condition's image of Weather Item should reflect Weather Model (wind)")
    }
}
