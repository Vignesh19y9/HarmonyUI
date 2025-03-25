//
//  SettingsButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsButton: View {
    let title: String
    let icon: String?
    let action: () -> Void
    
    public init(title: String, icon: String?, action: @escaping () -> Void) {
        self.title = title
        self.icon = icon
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            HStack {
                if let icon = icon {
                    Image(systemName: icon)
                        .frame(width: 24, height: 24)
                }
                Text(title)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
        }
    }
}


#Preview {
    SettingsButton(title: "Title",
                   icon: "",
                   action: {})
}
