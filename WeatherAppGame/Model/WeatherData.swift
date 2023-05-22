//
//  WeatherData.swift
//  WeatherAppGame
//
//  Created by Administrator on 9/6/21.
//

import Foundation

// TODO: add 6 more cities
let weatherData = [Weather(city: "New York City", temp: 70, weather: "thunderstorms", wind: 20),
                   Weather(city: "Detroit", temp: 95, weather: "cloudy", wind: 10),
                   Weather(city: "San Diego", temp: 75, weather: "sunny", wind: 5),
                   Weather(city: "Boston", temp: 65, weather: "rainy", wind: 19),
                   Weather(city: "Chicago", temp: 60, weather: "cloudy", wind: 7),
                   Weather(city: "Greensboro", temp: 71, weather: "sunny", wind: 16),
                   Weather(city: "Charlotte", temp: 78, weather: "rainy", wind: 8),
                   Weather(city: "Miami", temp: 85 , weather: "thunderstorms", wind: 25),
                   Weather(city: "Orlando", temp: 88 , weather: "cloudy", wind: 8)]




struct WeatherData {
    
    
    // TODO:  add a new static method to return the first Weather struct in your list,
    static func getFirstCity() -> Weather {
        return weatherData[0]
        }
    
    static func getCities() -> [String] {
        var cities: [String] = []
        for Weather in weatherData {
            cities.append(Weather.city);
        }
        return cities
    }
    
    
    static func getWeatherForCity(city: String) -> Weather {
        var count: Int = 0
        var index: Int = 0
        for Weather in weatherData {
            
            if Weather.city == city {
                index = count
                break
            }
            count+=1
        }
        return weatherData[index]
    }
    
}
