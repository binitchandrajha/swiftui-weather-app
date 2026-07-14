//
//  WeatherDetailRow.swift
//  WeatherApp
//
//  Created by Outcode on 14/07/2026.
//

import Foundation
import SwiftUI

struct WeatherDetailRow: View {
    var icon: String = "humidity"
    var label: String = "Humidity"
    var value: String = "80%"
    var body: some View {
        HStack(){
            HStack(){
                Image(systemName: icon).font(.system(size: 18)).foregroundStyle(Color.white).frame(width: 30)
                Text(label).foregroundStyle(Color.white).padding(.leading, 8).font(.system(size: 18))
            }.frame(maxWidth: .infinity,alignment: .leading)
            HStack(){
                Text(value).foregroundStyle(Color.white).padding(.leading, 8).font(.system(size: 18))
            }
        }.frame(maxWidth: .infinity)
    }
}

#Preview {
    WeatherDetailRow().background(Color.red)
}
