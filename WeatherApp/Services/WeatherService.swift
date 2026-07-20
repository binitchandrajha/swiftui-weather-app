//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Outcode on 17/07/2026.
//

import Foundation

struct WeatherService {
    func searchCities(query: String) async throws -> [CityModel] {
        let urlString = "https://geocoding-api.open-meteo.com/v1/search?name=\(query)&count=10&language=en&format=json"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
                
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let response = try JSONDecoder().decode(GeocodingResponse.self, from: data)
        
        return response.results ?? []
    }
}
