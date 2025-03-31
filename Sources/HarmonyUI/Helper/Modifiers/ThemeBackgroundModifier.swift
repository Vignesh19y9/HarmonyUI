//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct ThemeBackgroundModifier: ViewModifier {
    @EnvironmentObject var appTheme: DefaultAppTheme
    
    public func body(content: Content) -> some View {
        content
            .background{ appTheme.colors.white.normal.ignoresSafeArea() }
    }
}

extension View {
    public func themeBackground() -> some View {
        self.modifier(ThemeBackgroundModifier())
    }
}
