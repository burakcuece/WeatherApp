//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Burak Cüce on 16.03.22.
//

import Foundation

private let defaultIcon = "questionmark"
private let iconMap = [
    
    "Nieselregen" : "cloud.drizzle.fill",
    "Gewitter" : "cloud.bolt.fill",
    "Regen" : "cloud.rain.fill",
    "Klar" : "sun.max.fill",
    "Wolkig" : "cloud.fill",
]

public class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "Stadt"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = defaultIcon
    
    public let weatherService: WeatherService
    
    public init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
    public func refresh() {
        weatherService.loadWeatherData { weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature)°C"
                self.weatherDescription = weather.description.capitalized
                self.weatherIcon = iconMap[weather.iconName] ?? defaultIcon
            }
            
        }
    }
    
}
