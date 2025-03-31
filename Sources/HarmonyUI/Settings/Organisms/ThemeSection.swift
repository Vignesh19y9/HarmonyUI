//
//  ThemeSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI
import UIKit

public struct ThemeSection: View {
    @Environment(\.settingsData) public var settingsData
    let items: [AnyView]
    
    public init(items: [AnyView] = [
        AnyView(ThemeChangeButton())
    ]) {
        self.items = items
    }
    
    public var body: some View {
        SettingsSection(title: "Theme", items: items)
    }
}



#Preview {
    ThemeSection()
}
