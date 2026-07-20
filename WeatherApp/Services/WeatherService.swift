//
//  WeatherService.swift
//  WeatherApp
//
//  Created by Outcode on 17/07/2026.
//

import Foundation

struct WeatherService {
    func searchCities(query: String) async throws -> [CityModel] {
        // Step 2a: URL banao
        let urlString = "https://geocoding-api.open-meteo.com/v1/search?name=\(query)&count=5&language=en&format=json"
        
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        // Step 2b: API call karo
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // Step 2c: JSON ko Swift objects mein decode karo
        let response = try JSONDecoder().decode(GeocodingResponse.self, from: data)
        
        // Step 2d: results return karo, agar nil ho toh empty array
        return response.results ?? []
    }
}
