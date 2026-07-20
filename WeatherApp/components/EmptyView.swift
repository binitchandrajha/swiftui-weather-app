//
//  EmptyView.swift
//  WeatherApp
//
//  Created by Outcode on 20/07/2026.
//

import Foundation
import SwiftUI

struct EmptyView: View {
    var body: some View {
        Text("No result found").font(.system(size: 20, weight: .medium)).padding()
    }
}

#Preview {
    EmptyView()
}
