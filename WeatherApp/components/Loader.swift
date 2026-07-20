//
//  Loader.swift
//  WeatherApp
//
//  Created by Outcode on 20/07/2026.
//

import Foundation
import SwiftUI

struct Loader: View {
    var loaderText: String = "Loading..."
    var body: some View {
        VStack(){
            Text(loaderText).font(.system(size: 18, weight: .medium))
            ProgressView().scaleEffect(1.5)
        }
    }
}

#Preview {
    Loader()
}
