//
//  PremiumSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct PremiumSection: View {
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(SettingsButton(title: "Upgrade to Premium", icon: "star.fill") {
            print("Upgrade to Premium")
        })
    ]) {
        self.items = items
    }

    public var body: some View {
        SettingsSection(title: "Premium", items: items)
    }
}

#Preview {
    PremiumSection()
}
