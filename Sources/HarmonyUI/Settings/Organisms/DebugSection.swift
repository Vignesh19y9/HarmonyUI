//
//  DebugSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI
import UIKit

public struct DebugSection: View {
    @Environment(\.settingsData) public var settingsData
    let items: [AnyView]
    
    public init(items: [AnyView] = [
        AnyView(ClearDefaultsButton())
    ]) {
        self.items = items
    }
    
    public var body: some View {
        SettingsSection(title: "Debug", items: items)
    }
}



#Preview {
    FeedbackSection()
}
