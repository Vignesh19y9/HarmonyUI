//
//  DefaultSettingsPage.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct DefaultSettingsPage: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var appTheme: DefaultAppTheme
    let settingsData: SettingsData
    
    public init(settingsData: SettingsData = .default) {
        self.settingsData = settingsData
    }
    
    public var body: some View {
        NavigationView {
            SettingsTemplate(sections: [
//                AnyView(PremiumSection()),
                AnyView(ThemeSection()),
                AnyView(FeedbackSection()),
                AnyView(LegalSection()),
                AnyView(MoreSection()),
                AnyView(DebugSection()),
                AnyView(AppInfoSection()),
                AnyView(LoveSection()),
            ])
            .environment(\.settingsData, settingsData)
            .themeBackground()
            .navigationTitle("Settings")
            .toolbar {
                CloseButton(action: { dismiss() })
            }
        }
    }
}

#Preview {
    DefaultSettingsPage()
        .environmentObject(DefaultAppTheme())
}
