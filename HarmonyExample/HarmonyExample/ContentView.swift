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
                .font(appTheme.typography.title)
                .foregroundStyle(appTheme.colors.primary)
        }
        .padding()
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
