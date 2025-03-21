//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation
import SwiftUI

private struct AppThemeKey: @preconcurrency EnvironmentKey {
    @MainActor static let defaultValue: DefaultAppTheme = DefaultAppTheme()
}

public extension EnvironmentValues {
    var appTheme: DefaultAppTheme {
        get { self[AppThemeKey.self] }
        set { self[AppThemeKey.self] = newValue }
    }
}
