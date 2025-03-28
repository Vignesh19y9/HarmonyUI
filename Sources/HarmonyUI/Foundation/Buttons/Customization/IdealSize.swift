//
//  IdealSize.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct IdealSizeValue: Sendable {
    public var horizontal: Bool?
    public var vertical: Bool?
    
    public init(horizontal: Bool? = nil, vertical: Bool? = nil) {
        self.horizontal = horizontal
        self.vertical = vertical
    }
}

public struct IdealSizeKey: EnvironmentKey {
    static public let defaultValue = IdealSizeValue()
}

public extension EnvironmentValues {

    var idealSize: IdealSizeValue {
        get { self[IdealSizeKey.self] }
        set { self[IdealSizeKey.self] = newValue }
    }
}

public extension View {
    func idealSize(horizontal: Bool? = nil, vertical: Bool? = nil) -> some View {
        environment(\.idealSize, .init(horizontal: horizontal, vertical: vertical))
    }
        
    func idealSize() -> some View {
        idealSize(horizontal: true, vertical: true)
    }
}
