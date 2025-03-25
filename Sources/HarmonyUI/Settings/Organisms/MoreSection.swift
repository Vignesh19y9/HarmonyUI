//
//  MoreSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct MoreSection: View {
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(SettingsButton(title: "More Apps", icon: "apps.iphone") {
            print("Show More Apps")
        })
    ]) {
        self.items = items
    }

    public var body: some View {
        SettingsSection(title: "More", items: items)
    }
}

#Preview {
    MoreSection()
}
