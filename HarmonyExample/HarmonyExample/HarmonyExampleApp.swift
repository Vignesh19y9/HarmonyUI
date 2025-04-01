//
//  HarmonyExampleApp.swift
//  HarmonyExample
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI
import HarmonyUI

@main
struct HarmonyExampleApp: App {
    @ObservedObject var appTheme = DefaultAppTheme()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                
                MainAppContainer(content: ContentView())
                    .environment(\.appTheme, appTheme)
            }
            .environmentObject(appTheme)
        }
    }
}
