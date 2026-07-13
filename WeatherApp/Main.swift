//
//  Main.swift
//  WeatherApp
//
//  Created by Outcode on 13/07/2026.
//

import Foundation
import SwiftUI

struct Main: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [AppColors.gradientTop,AppColors.gradientBottom],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
        }
    }
}

#Preview {
    Main()
}
