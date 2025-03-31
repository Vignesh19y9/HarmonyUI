//
//  ThemeChangeView.swift
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
}

public struct ThemeChangeView: View {
    @AppStorage("appearance") private var appearance: Appearance = .system
    
    public init() { }
    
    public var body: some View {
        Button(action: {
            withAnimation {
                appearance = (appearance == .dark) ? .light : .dark
            }
        }) {
            Image(systemName: appearance == .light ? "moon.fill" : "sun.max.fill")
                .frame(width: 16, height: 24)
        }
        .preferredColorScheme(appearance.colorScheme)
    }
}
