//
//  WeatherDummyData.swift
//  WeatherApp
//
//  Created by Outcode on 16/07/2026.
//

import Foundation

struct WeatherDummyData {
    static let hourlyForecasts: [HourlyForecastModel] = [
        HourlyForecastModel(time: "12:00 AM", temperature: 15, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "1:00 AM",  temperature: 14, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "2:00 AM",  temperature: 14, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "3:00 AM",  temperature: 13, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "4:00 AM",  temperature: 13, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "5:00 AM",  temperature: 13, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "6:00 AM",  temperature: 14, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "7:00 AM",  temperature: 16, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "8:00 AM",  temperature: 18, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "9:00 AM",  temperature: 20, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "10:00 AM", temperature: 22, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "11:00 AM", temperature: 24, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "12:00 PM", temperature: 26, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "1:00 PM",  temperature: 27, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "2:00 PM",  temperature: 28, weatherCondtion: "Sunny"),
        HourlyForecastModel(time: "3:00 PM",  temperature: 27, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "4:00 PM",  temperature: 25, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "5:00 PM",  temperature: 23, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "6:00 PM",  temperature: 21, weatherCondtion: "Rainy"),
        HourlyForecastModel(time: "7:00 PM",  temperature: 19, weatherCondtion: "Rainy"),
        HourlyForecastModel(time: "8:00 PM",  temperature: 18, weatherCondtion: "Cloudy"),
        HourlyForecastModel(time: "9:00 PM",  temperature: 17, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "10:00 PM", temperature: 16, weatherCondtion: "Clear"),
        HourlyForecastModel(time: "11:00 PM", temperature: 15, weatherCondtion: "Clear"),
    ]
    
    static let weeklyForecasts: [WeeklyForecastModel] = [
            WeeklyForecastModel(
                day: "Today",
                minTemp: "22°",
                maxTemp: "31°",
                weatherCondition: "cloud.sun.fill"
            ),
            WeeklyForecastModel(
                day: "Mon",
                minTemp: "21°",
                maxTemp: "30°",
                weatherCondition: "sun.max.fill"
            ),
            WeeklyForecastModel(
                day: "Tue",
                minTemp: "20°",
                maxTemp: "28°",
                weatherCondition: "cloud.rain.fill"
            ),
            WeeklyForecastModel(
                day: "Wed",
                minTemp: "19°",
                maxTemp: "27°",
                weatherCondition: "cloud.bolt.rain.fill"
            ),
            WeeklyForecastModel(
                day: "Thu",
                minTemp: "22°",
                maxTemp: "32°",
                weatherCondition: "sun.max.fill"
            ),
            WeeklyForecastModel(
                day: "Fri",
                minTemp: "23°",
                maxTemp: "33°",
                weatherCondition: "cloud.sun.fill"
            ),
            WeeklyForecastModel(
                day: "Sat",
                minTemp: "21°",
                maxTemp: "29°",
                weatherCondition: "cloud.drizzle.fill"
            )
        ]
}
