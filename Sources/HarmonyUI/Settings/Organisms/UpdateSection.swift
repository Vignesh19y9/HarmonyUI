//
//  UpdateSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI

public struct UpdateSection: View {
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(UpdateButton())
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
