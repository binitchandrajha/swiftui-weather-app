//
//  WeatherIcon.swift
//  WeatherApp
//
//  Created by Outcode on 14/07/2026.
//

import SwiftUI

enum WeatherCondition {
    case sunny
    case cloudy
    case rain
    case snow
    case thunderstorm
    case fog
    case sunrise
    case night
}

struct WeatherIcon: View {
    var condition: WeatherCondition
    var size: CGFloat = 80

    var symbolName: String {
        switch condition {
        case .sunny:       return "sun.max.fill"
        case .cloudy:      return "cloud.fill"
        case .rain:        return "cloud.rain.fill"
        case .snow:        return "snowflake"
        case .thunderstorm:return "cloud.bolt.rain.fill"
        case .fog:         return "cloud.fog.fill"
        case .sunrise:     return "sunrise.fill"
        case .night:       return "moon.stars.fill"
        }
    }

    var iconColor: Color {
        switch condition {
        case .sunny:       return .yellow
        case .cloudy:      return .gray
        case .rain:        return .blue
        case .snow:        return .cyan
        case .thunderstorm:return .purple
        case .fog:         return Color(.lightGray)
        case .sunrise:     return .orange
        case .night:       return .indigo
        }
    }

    var body: some View {
        Image(systemName: symbolName)
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundStyle(iconColor)
    }
}

#Preview {
    VStack(spacing: 20) {
        WeatherIcon(condition: .sunny)
        WeatherIcon(condition: .cloudy)
        WeatherIcon(condition: .rain)
        WeatherIcon(condition: .snow)
        WeatherIcon(condition: .thunderstorm)
        WeatherIcon(condition: .fog)
        WeatherIcon(condition: .sunrise)
        WeatherIcon(condition: .night)
    }
    .padding()
    .background(Color(.systemGray6))
}
