//
//  ButtonColor.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public protocol AppButtonColor {
    var primary: ButtonColor { get }
    var primarySubtle: ButtonColor { get }
    var secondary: ButtonColor { get }
    var critical: ButtonColor { get }
    var criticalSubtle: ButtonColor { get }
}

public struct ButtonColor {
    public let background: Color
    public let backgroundPressed: Color
    
    public let foreground: Color
    public let foregroundPressed: Color
    
    public init(background: Color,
                backgroundPressed: Color,
                foreground: Color,
                foregroundPressed: Color) {
        
        self.background = background
        self.backgroundPressed = backgroundPressed
        self.foreground = foreground
        self.foregroundPressed = foregroundPressed
    }
}

public struct DefaultAppButtonColor: AppButtonColor {
    public var primary: ButtonColor
    public var primarySubtle: ButtonColor
    public var secondary: ButtonColor
    public var critical: ButtonColor
    public var criticalSubtle: ButtonColor

    public init(
        primary: ButtonColor = ButtonColor(
            background: Color("PrimaryBackground", bundle: .harmony),
            backgroundPressed: Color("PrimaryBackgroundPressed", bundle: .harmony),
            foreground: Color("PrimaryForeground", bundle: .harmony),
            foregroundPressed:  Color("PrimaryForeground", bundle: .harmony)
        ),
        primarySubtle: ButtonColor = ButtonColor(
            background: Color("PrimarySubtleBackground", bundle: .harmony),
            backgroundPressed: Color("PrimarySubtleBackgroundPressed", bundle: .harmony),
            foreground: Color("PrimarySubtleForeground", bundle: .harmony),
            foregroundPressed:  Color("PrimarySubtleForeground", bundle: .harmony)
        ),
        secondary: ButtonColor = ButtonColor(
            background: Color("SecondaryBackground", bundle: .harmony),
            backgroundPressed: Color("SecondaryBackgroundPressed", bundle: .harmony),
            foreground: Color("SecondaryForeground", bundle: .harmony),
            foregroundPressed:  Color("SecondaryForeground", bundle: .harmony)
        ),
        critical: ButtonColor = ButtonColor(
            background: Color("CriticalBackground", bundle: .harmony),
            backgroundPressed: Color("CriticalBackgroundPressed", bundle: .harmony),
            foreground: Color("CriticalForeground", bundle: .harmony),
            foregroundPressed:  Color("CriticalForeground", bundle: .harmony)
        ),
        criticalSubtle: ButtonColor = ButtonColor(
            background: Color("CriticalSubtleBackground", bundle: .harmony),
            backgroundPressed: Color("CriticalSubtleBackgroundPressed", bundle: .harmony),
            foreground: Color("CriticalSubtleForeground", bundle: .harmony),
            foregroundPressed:  Color("CriticalSubtleForeground", bundle: .harmony)
        )
    ) {
        self.primary = primary
        self.primarySubtle = primarySubtle
        self.critical = critical
        self.criticalSubtle = criticalSubtle
        self.secondary = secondary
    }
}
