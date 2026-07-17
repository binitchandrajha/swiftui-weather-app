//
//  WeeklyForecastModel.swift
//  WeatherApp
//
//  Created by Outcode on 17/07/2026.
//

import Foundation

struct WeeklyForecastModel : Identifiable {
    let id = UUID()
    let day: String
    let minTemp: String
    let maxTemp: String
    let weatherCondition: String
}
