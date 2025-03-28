//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

struct TextColorKey: EnvironmentKey {
    static let defaultValue: Color? = nil
}

public extension EnvironmentValues {
    var textColor: Color? {
        get { self[TextColorKey.self] }
        set { self[TextColorKey.self] = newValue }
    }
}

public extension View {
    func textColor(_ color: Color?) -> some View {
        environment(\.textColor, color)
    }
}
