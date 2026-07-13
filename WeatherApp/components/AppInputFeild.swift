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
    var onChange: (String) -> Void
    let placeholder: String
    var body: some View {
        TextField(placeholder, text: $text).onChange(of:text) {
            onChange(text)
        }
    }
}

#Preview {
    AppInputFeild(
        text: .constant(""),
        onChange: { value in
          print(value)
        },
        placeholder: "Type text..."
    )
}
