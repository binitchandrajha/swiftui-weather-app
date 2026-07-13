//
//  SearchBox.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct SearchBox: View {
    @State private var searchLocationText: String = ""
    var body: some View {
        HStack(){
            HStack(){
                Image(systemName: "location").font(.system(size: 20))
                AppInputFeild(
                    text: $searchLocationText,
                    onChange: { text in
                        searchLocationText = text
                    },
                    placeholder: "Search Location"
                )
            }
            HStack(){
                PrimaryButton(label: Text("Search"))
            }
        }.padding(10).padding(.horizontal,10).background(Color.white).cornerRadius(12)
    }
}

#Preview {
    SearchBox()
}
