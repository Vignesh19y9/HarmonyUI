//
//  ContentView.swift
//  HarmonyExample
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI
import HarmonyUI

struct ContentView: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")
                .font(appTheme.typography.title1.font)
                .foregroundStyle(appTheme.colors.product.active)
            
            ThemeChangeView()
        }
        .padding()
    }
}

struct ExampleColor: AppColors {
    var ink: InkColors = .init()
    var product: ProductColors = .init()
    var cloud: CloudColors = .init()
    var red: RedColors = .init()
    var blue: BlueColors = .init()
    var green: GreenColors = .init()
    var orange: OrangeColors = .init()
    var white: WhiteColors = .init()
}

#Preview {
    ContentView()
}
