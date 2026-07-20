//
//  ViewModels.swift
//  WeatherApp
//
//  Created by Outcode on 17/07/2026.
//

import Foundation

@Observable
class SearchViewModel {
    var cities: [CityModel] = []
    var isLoading: Bool = false
    var errorMessage: String? = nil
    
    private let service = WeatherService()
    
    func search(query: String) async{
        guard !query.isEmpty else {
            cities = []
            return
        }
        
        isLoading = true
        errorMessage = nil
        
        do {
            cities = try await service.searchCities(query: query)
        } catch {
            errorMessage = "Search failed: \(error.localizedDescription)"
            cities = []
        }
        
        isLoading = false
    }
}
