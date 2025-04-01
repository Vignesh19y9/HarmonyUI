//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct ClearDefaultsButton: View {
    @Environment(\.settingsData) public var settingsData
    
    let title: String
    let icon: String
    
    public init(title: String = "Clear Defaults",
                icon: String = "trash") {
        
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        SettingsButton(
            title: title,
            icon: icon,
            showDisclosure: false
        ) {
            UserDefaults.standard.resetUser()
        }
    }
}

#Preview {
    ClearDefaultsButton()
}
