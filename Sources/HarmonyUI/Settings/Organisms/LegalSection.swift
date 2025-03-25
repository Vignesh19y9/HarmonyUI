//
//  LegalSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct LegalSection: View {
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(SettingsLink(title: "Privacy Policy", icon: "", url: "https://yourwebsite.com/privacy")),
        AnyView(SettingsLink(title: "Terms of Service", icon: "", url: "https://yourwebsite.com/terms"))
    ]) {
        self.items = items
    }

    public var body: some View {
        SettingsSection(title: "Legal", items: items)
    }
}

#Preview {
    LegalSection()
}
