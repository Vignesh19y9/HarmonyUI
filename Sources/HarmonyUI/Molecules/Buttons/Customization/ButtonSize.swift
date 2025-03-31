//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public enum ButtonSize: Sendable {
    case regular
    case compact
}

struct ButtonSizeKey: EnvironmentKey {
    static let defaultValue: ButtonSize = .regular
}

public extension EnvironmentValues {
    var buttonSize: ButtonSize {
        get { self[ButtonSizeKey.self] }
        set { self[ButtonSizeKey.self] = newValue }
    }
}

public extension View {
    func buttonSize(_ size: ButtonSize) -> some View {
        environment(\.buttonSize, size)
    }
}
