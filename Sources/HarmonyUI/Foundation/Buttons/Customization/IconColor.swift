//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct IconColorKey: EnvironmentKey {
    static public let defaultValue: Color? = nil
}

public extension EnvironmentValues {
    var iconColor: Color? {
        get { self[IconColorKey.self] }
        set { self[IconColorKey.self] = newValue }
    }
}

public extension View {
    func iconColor(_ color: Color?) -> some View {
        environment(\.iconColor, color)
    }
}
