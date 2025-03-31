//
//  HapticsEnabled.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

struct HapticsEnabledKey: EnvironmentKey {
    static public let defaultValue = true
}

public extension EnvironmentValues {

    var isHapticsEnabled: Bool {
        get { self[HapticsEnabledKey.self] }
        set { self[HapticsEnabledKey.self] = newValue }
    }
}
