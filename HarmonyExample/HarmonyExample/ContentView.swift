//
//  ContentView.swift
//  HarmonyExample
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI
import HarmonyUI

struct ContentView: View {
    @State var appTheme: any AppTheme = DefaultAppTheme()
    
    var body: some View {
        VStack {
            Button("Change theme") {
                appTheme = DefaultAppTheme(colors: ExampleColor())
            }
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello, world!")
                .font(appTheme.typography.title)
                .foregroundStyle(appTheme.colors.primary)
        }
        .padding()
        .environment(\.appTheme, appTheme)
    }
}

struct ExampleColor: AppColors {
    var primary: Color = .red
    var secondary: Color = .red
    var background: Color = .red
    var foreground: Color = .red
    var border: Color = .red
    var success: Color = .red
    var warning: Color = .red
    var error: Color = .red
}

#Preview {
    ContentView()
}
