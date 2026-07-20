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
    let countryName: String
    let latitude: Double
    let longitude: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case countryName = "country"
        case latitude
        case longitude
    }
}
