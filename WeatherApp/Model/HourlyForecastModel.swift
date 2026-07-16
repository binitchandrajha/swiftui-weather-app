//
//  HourlyForecastModel.swift
//  WeatherApp
//
//  Created by Outcode on 15/07/2026.
//

import Foundation

struct HourlyForecastModel : Identifiable {
    let id = UUID()
    let time: String
    let temperature: Int
    let weatherCondtion: String
}
