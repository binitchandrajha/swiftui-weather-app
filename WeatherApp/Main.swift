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
        ZStack(alignment: .topLeading) {
            LinearGradient(
                colors: [AppColors.gradientTop,AppColors.gradientBottom],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            VStack(){
                Text("City Weather").font(.system(size: 22, weight: .bold)).frame(maxWidth: .infinity).foregroundStyle(Color.white).padding(.top, 20)
                
                Spacer().frame(height: 20)
                
                SearchBox()
            }.padding(16)
        }
    }
}

#Preview {
    Main()
}
