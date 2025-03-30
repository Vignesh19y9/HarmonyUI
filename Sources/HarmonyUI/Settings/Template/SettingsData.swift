//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsData {
    let appName: String
    let appVersion: String
    let buildNumber: String
    let isPremium: Bool

    @MainActor static public let `default` = SettingsData(
        appName: "Harmony UI app",
        appVersion: "1.0.0",
        buildNumber: "100",
        isPremium: false
    )
}

private struct SettingsDataKey: @preconcurrency EnvironmentKey {
    @MainActor static let defaultValue: SettingsData = .default
}

extension EnvironmentValues {
    public var settingsData: SettingsData {
        get { self[SettingsDataKey.self] }
        set { self[SettingsDataKey.self] = newValue }
    }
}
