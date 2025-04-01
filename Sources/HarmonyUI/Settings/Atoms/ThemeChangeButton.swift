//
//  ThemeChangeButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation
import SwiftUI

public enum Appearance: String, CaseIterable, Identifiable {
    case system = "System"
    case light = "Light"
    case dark = "Dark"
    
    public var id: String { self.rawValue }
    
    public var colorScheme: ColorScheme? {
        switch self {
        case .light:
            return .light
        case .dark:
            return .dark
        case .system:
            return nil
        }
    }
    
    func next() -> Appearance {
        switch self {
        case .light:
            return .dark
        case .dark:
            return .system
        case .system:
            return .light
        }
    }
}

public struct ThemeChangeButton: View {
    @AppStorage(UserKeys.appearance.key) private var appearance: Appearance = .system
    
    public init() { }
    
    public var body: some View {
        SettingsButton(
            title: appearance.rawValue,
            icon: (appearance == .dark) ? "moon.fill" : "sun.max.fill",
            showDisclosure: false,
            action: {
                appearance = appearance.next()
            })
    }
}
