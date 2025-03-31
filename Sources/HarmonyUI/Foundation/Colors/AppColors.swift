//
//  AppColor.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppColors {
    var buttonColor: AppButtonColor { get }
    var white: WhiteColors { get }
    var ink: InkColors { get }
    var product: ProductColors { get }
}

public protocol Colors {
    init(bundle: Bundle)
}

public protocol NormalColors: Colors {
    var normal: Color { get }
    var active: Color { get }
    var hover: Color { get }
}

public protocol DarkLightColors: Colors {
    var darker: Color { get }
    var lighter: Color { get }
}

public protocol DarkerColors: Colors {
    var dark: Color { get }
    var darkActive: Color { get }
    var darkHover: Color { get }
}

public protocol LighterColors: Colors {
    var light: Color { get }
    var lightActive: Color { get }
    var lightHover: Color { get }
}

// MARK: - Default Implementation
public struct DefaultColors: AppColors {
    public let buttonColor: AppButtonColor = DefaultAppButtonColor()
    public let white: WhiteColors
    public let ink: InkColors
    public let product: ProductColors
    
    public init(white: WhiteColors = WhiteColors(),
                ink: InkColors = InkColors(),
                product: ProductColors = ProductColors()) {
        
        self.white = white
        self.ink = ink
        self.product = product
    }
}
