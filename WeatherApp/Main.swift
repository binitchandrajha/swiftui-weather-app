//
//  Main.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct Main: View {
    @State private var searchLocationText: String = ""
    @FocusState private var isSearchTextFocused: Bool
    @State private var searchViewModel = SearchViewModel()
    @State private var searchTask: Task<Void, Never>? = nil
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(
                colors: [AppColors.gradientTop,AppColors.gradientBottom],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            VStack(){
                Text("City Weather").font(.system(size: 22, weight: .bold)).frame(maxWidth: .infinity).foregroundStyle(Color.white).padding(.top, 20)
                
                Spacer().frame(height: 20)
                
                SearchBox(
                    searchText: $searchLocationText,
                    isFocused: $isSearchTextFocused
                )
                
                Spacer().frame(height: 40)
                
                ZStack(alignment: .topLeading){
                    ScrollView {
                        VStack(){
                            WeatherIcon(condition: .sunny)
                            
                            Spacer().frame(height: 40)
                            
                            Text("27.1°C").font(.system(size: 40, weight: .medium)).foregroundStyle(Color.white)
                            Spacer().frame(height: 12)
                            Text("Kathmandu").font(.system(size: 18, weight: .medium)).foregroundStyle(Color.white)
                            Spacer().frame(height: 12)
                            Text("Overcast Clouds").font(.system(size: 18, weight: .medium)).foregroundStyle(Color.white)
                            Spacer().frame(height: 36)
                            WeatherDetailRow(icon: "humidity", label: "Humidity", value: "80%")
                            Spacer().frame(height: 10)
                            WeatherDetailRow(icon: "thermometer", label: "Feels like", value: "30.0°C")
                            Spacer().frame(height: 10)
                            WeatherDetailRow(icon: "wind", label: "Wind speed", value: "22.72 km/h")
                            Spacer().frame(height: 10)
                            WeatherDetailRow(icon: "cloud", label: "Condition", value: "Overcast clouds")
                            
                            Spacer().frame(height: 30)
                            
                            HourlyForecast()
                            
                            Spacer().frame(height: 30)
                            
                            WeeklyForecast()
                        }
                    }
                    
                    if isSearchTextFocused {
                        SearchView(
                            onClick: { city in
                                
                            },
                            cities: searchViewModel.cities,
                            isSearching: searchViewModel.isLoading,
                        )
                    }
                }
            }.frame(maxWidth: .infinity).padding(16)
        }.onTapGesture {
            isSearchTextFocused = false
        }.onChange(of: searchLocationText) {_, newValue in
            searchTask?.cancel()
            
            searchTask = Task{
                try? await Task.sleep(for: .milliseconds(500))
                
                guard !Task.isCancelled else {
                    return
                }
                
                await searchViewModel.search(query: newValue)
            }
            
        }
    }
}

#Preview {
    Main()
}
