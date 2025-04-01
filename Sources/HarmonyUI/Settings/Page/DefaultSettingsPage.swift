//
//  DefaultSettingsPage.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct DefaultSettingsPage: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let settingsData: SettingsData
    
    public init(settingsData: SettingsData = .default) {
        self.settingsData = settingsData
    }
    
    public var body: some View {
        SettingsTemplate(sections: [
            AnyView(PremiumSection()),
            AnyView(ThemeSection()),
            AnyView(FeedbackSection()),
            AnyView(LegalSection()),
            AnyView(MoreSection()),
            AnyView(DebugSection()),
            AnyView(AppInfoSection()),
            AnyView(LoveSection()),
        ])
        .environment(\.settingsData, settingsData)
        .background{ Color.red }
    }
}

#Preview {
    DefaultSettingsPage()
        .environmentObject(DefaultAppTheme())
}
