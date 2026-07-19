//
//  AppInputFeild.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct AppInputFeild: View {
    @Binding var text: String
    var isFocused: FocusState<Bool>.Binding
    let placeholder: String
    var body: some View {
        TextField(placeholder, text: $text).focused(isFocused)
    }
}

struct AppInputFeildPreivew: View {
    @FocusState var isFocused: Bool
    var body: some View {
        AppInputFeild(
            text: .constant(""),
            isFocused: $isFocused,
            placeholder: "Type text..."
        )
    }
}

#Preview {
    AppInputFeildPreivew()
}
