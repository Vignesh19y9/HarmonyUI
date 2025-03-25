//
//  SettingsSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsSection: View {
    let title: String
    let items: [AnyView]

    public init(title: String, items: [AnyView]) {
        self.title = title
        self.items = items
    }

    public var body: some View {
        if !items.isEmpty {
            Section(header: Text(title).font(.headline)) {
                ForEach(items.indices, id: \.self) { index in
                    items[index]
                }
            }
        }
    }
}

#Preview {
    SettingsSection(title: "Settings", items: [
        AnyView(Text("Item 1")),
        AnyView(Text("Item 2")),
    ])
}
