//
//  AppElevation.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public protocol AppElevation {
    var level1: ElevationStyle { get }
    var level2: ElevationStyle { get }
    var level3: ElevationStyle { get }
    var level4: ElevationStyle { get }
}

public struct ElevationStyle {
    public let color: Color
    public let radius: CGFloat
    public let x: CGFloat
    public let y: CGFloat
    
    public init(color: Color = .black,
                radius: CGFloat = 1,
                x: CGFloat = 0,
                y: CGFloat = 0) {
        
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}

extension View {
    public func elevation(_ style: ElevationStyle) -> some View {
        self.shadow(
            color: style.color,
            radius: style.radius,
            x: style.x,
            y: style.y
        )
    }
}

//MARK: Default
public struct DefaultAppElevation: AppElevation {
    public var level1: ElevationStyle
    public var level2: ElevationStyle
    public var level3: ElevationStyle
    public var level4: ElevationStyle
    
    public init(
        level1: ElevationStyle = ElevationStyle(color: .black.opacity(0.1),
                                                radius: 2, x: 0, y: 1),
        level2: ElevationStyle = ElevationStyle(color: .black.opacity(0.15),
                                                radius: 4, x: 0, y: 2),
        level3: ElevationStyle = ElevationStyle(color: .black.opacity(0.2),
                                                radius: 6, x: 0, y: 4),
        level4: ElevationStyle = ElevationStyle(color: .black.opacity(0.25),
                                                radius: 8, x: 0, y: 6)
    ) {
        self.level1 = level1
        self.level2 = level2
        self.level3 = level3
        self.level4 = level4
    }
}
