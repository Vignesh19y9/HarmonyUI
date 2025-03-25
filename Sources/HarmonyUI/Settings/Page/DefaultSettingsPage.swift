//
//  DefaultSettingsPage.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct DefaultSettingsPage: View {
    let settingsData: SettingsData
    
    init(settingsData: SettingsData = .default) {
        self.settingsData = settingsData
    }
    
    public var body: some View {
        SettingsTemplate(sections: [
            AnyView(PremiumSection()),
            AnyView(FeedbackSection()),
            AnyView(LegalSection()),
            AnyView(MoreSection()),
            AnyView(SocialSection()),
            AnyView(AppInfoSection()),
            AnyView(LoveSection())
        ])
        .environment(\.settingsData, settingsData)
    }
}

#Preview {
    DefaultSettingsPage()
}
