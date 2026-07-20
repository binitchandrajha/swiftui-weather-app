//
//  SearchView.swift
//  WeatherApp
//
//  Created by Outcode on 17/07/2026.
//

import Foundation
import SwiftUI

struct SearchView: View {
    let onClick: (CityModel) -> Void
    var cities: [CityModel] = []
    var isSearching: Bool = false
    var body: some View {
        VStack(){
            if cities.isEmpty && !isSearching{
                EmptyView()
            }
            if isSearching {
                Loader(loaderText: "Searching...")
            }
            ScrollView(){
                LazyVStack(){
                    ForEach(cities) { city in
                        Button(action: {
                            onClick(city)
                        } ){
                            VStack(){
                                Text("\(city.name) (\(city.countryName))").foregroundStyle(Color.white).font(.system(size: 20, weight: .semibold))
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
                }
            }
        }.padding().frame(maxHeight: 350).background(Color.white).shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 4).cornerRadius(16)
    }
}

#Preview {
    SearchView(
        onClick: { city in
            
        },
        cities: CityDummyList.cityList
    )
}
