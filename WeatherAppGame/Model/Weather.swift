//
//  Weather.swift
//  WeatherAppGame
//
//  Created by Administrator on 9/6/21.
//

import Foundation

struct Weather {
    
    let city: String
    let temp: Int
    let weather: String
    let wind : Int
    
    init (city: String, temp: Int, weather: String, wind: Int) {
        self.city = city
        self.temp = temp
        self.weather = weather
        self.wind = wind
    }
    
}
