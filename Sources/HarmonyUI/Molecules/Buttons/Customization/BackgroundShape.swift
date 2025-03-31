//
//  BackgroundShape.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

struct BackgroundShapeKey: EnvironmentKey {
    static public let defaultValue: BackgroundShape = .init(inactive: .gray,
                                                            active: .black)
}

public extension EnvironmentValues {
    var backgroundShape: BackgroundShape {
        get { self[BackgroundShapeKey.self] }
        set { self[BackgroundShapeKey.self] = newValue }
    }
}

public struct BackgroundShape: Sendable {
    
    public let inactive: any ShapeStyle
    public let active: any ShapeStyle
    
    @ViewBuilder
    public var inactiveView: some View {
        switch inactive {
            case let color as Color:            color
            case let color as LinearGradient:   color
            case let color as RadialGradient:   color
            default:                            EmptyView()
        }
    }
    
    @ViewBuilder
    public var activeView: some View {
        switch active {
            case let color as Color:            color
            case let color as LinearGradient:   color
            case let color as RadialGradient:   color
            default:                            EmptyView()
        }
    }
    
    public init(inactive: any ShapeStyle, active: any ShapeStyle) {
        self.inactive = inactive
        self.active = active
    }
}

public extension View {
    func backgroundStyles(_ shape: any ShapeStyle, active: any ShapeStyle) -> some View {
        environment(\.backgroundShape, .init(inactive: shape, active: active))
    }
}
