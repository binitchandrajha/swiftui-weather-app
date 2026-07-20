//
//  CityModel.swift
//  WeatherApp
//
//  Created by Outcode on 18/07/2026.
//

import Foundation

struct GeocodingResponse: Codable {
    let results: [CityModel]?
}

struct CityModel: Identifiable, Codable {
    let id: Int
    let name: String
    let latitude: Double
    let longitude: Double
}
