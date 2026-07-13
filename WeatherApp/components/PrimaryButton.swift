//
//  PrimaryButton.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct PrimaryButton <Label: View>: View {
    let label: Label
    
    var body: some View {
        label
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding(.horizontal,20)
            .padding(.vertical,10)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

#Preview {
    PrimaryButton(
        label: Text("Primary Button")
    )
}
