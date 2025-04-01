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
    @State var showSettings: Bool = false
    
    var body: some View {
        VStack {
            Text("This is the main page")
                .font(appTheme.typography.title1.font)
                .foregroundStyle(appTheme.colors.product.active)
            
            ThemeChangeButton()
                .elevation(appTheme.elevation.level2)
            
            PrimaryButton("Change App theme") {
                appTheme.colors = ExampleColor()
            }
            
            PrimaryButton("Show Settings") {
                showSettings.toggle()
            }
        }
        .padding()
        .popover(isPresented: $showSettings) {
            DefaultSettingsPage()
        }
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
