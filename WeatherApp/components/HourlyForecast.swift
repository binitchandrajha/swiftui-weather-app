//
//  HourlyForecast.swift
//  WeatherApp
//
//  Created by Outcode on 15/07/2026.
//

import Foundation
import SwiftUI

struct HourlyForecast: View {
    var body: some View {
        VStack(
            alignment: .leading
        ) {
                Text("Hourly Forecast").foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
                
                ScrollView(.horizontal){
                    LazyHStack(){
                        ForEach(WeatherDummyData.hourlyForecasts) { items in
                            VStack(){
                                Text(items.time).font(.system(size: 20,weight: .medium)).foregroundStyle(Color.white)
                                Spacer().frame(height: 24)
                                WeatherIcon(condition: .sunny)
                                Spacer().frame(height: 20)
                                Text("\(items.temperature)°C")
                                    .font(.system(size: 24, weight: .medium))
                                    .foregroundStyle(.white)
                            }.padding(16)
                        }
                    }
                }
        }.frame(maxWidth: .infinity).padding().background(
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
    HourlyForecast()
}
