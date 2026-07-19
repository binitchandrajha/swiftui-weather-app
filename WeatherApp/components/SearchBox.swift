//
//  SearchBox.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct SearchBox: View {
    @Binding var searchText: String
    var isFocused: FocusState<Bool>.Binding
    var body: some View {
        HStack(){
            HStack(){
                Image(systemName: "location").font(.system(size: 20))
                AppInputFeild(
                    text: $searchText,
                    isFocused: isFocused,
                    placeholder: "Search Location"
                )
            }
            HStack(){
                PrimaryButton(label: Text("Search"))
            }
        }.padding(10).padding(.horizontal,10).background(Color.white).cornerRadius(12)
    }
}

struct SearchBoxPreivew: View {
    @State private var searchText: String = ""
    @FocusState private var isFocused: Bool
    var body: some View {
        SearchBox(
            searchText: $searchText,
            isFocused: $isFocused
        )
    }
}

#Preview {
    SearchBoxPreivew()
}
