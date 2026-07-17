//
//  WeeklyForecast.swift
//  WeatherApp
//
//  Created by Outcode on 16/07/2026.
//

import Foundation
import SwiftUI

struct WeeklyForecast: View {
    var body: some View {
        VStack(
            alignment: .leading
        ){
            Text("7 Day Forecast").foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
            
            ScrollView(){
                ForEach(WeatherDummyData.weeklyForecasts){ item in
                    HStack(){
                        HStack(){
                            Text(item.day).foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
                        }.frame(minWidth: 80)
                        HStack(){
                            WeatherIcon(condition: .sunny, size: 60)
                        }.frame(maxWidth: .infinity)
                        HStack(){
                            Text(item.maxTemp).foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
                            Text(item.minTemp).foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
                        }.frame(minWidth: 80)
                    }
                }
            }
        }.frame(maxWidth: .infinity, alignment: .leading).padding().background(
            LinearGradient(
                            colors: [
                                Color(red: 144/255, green: 141/255, blue: 234/255),
                                Color(red: 149/255, green: 142/255, blue: 233/255)
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
        ).clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    WeeklyForecast()
}
