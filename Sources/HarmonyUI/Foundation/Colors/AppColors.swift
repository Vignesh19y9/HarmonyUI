//
//  AppColor.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppColors {
    var white: WhiteColors { get }
    var ink: InkColors { get }
    var product: ProductColors { get }
    var cloud: CloudColors { get }
    
    var red: RedColors { get }
    var blue: BlueColors { get }
    var green: GreenColors { get }
    var orange: OrangeColors { get }
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
  
    public let white: WhiteColors
    public let ink: InkColors
    public let product: ProductColors
    public let cloud: CloudColors
    public let red: RedColors
    public let blue: BlueColors
    public let green: GreenColors
    public let orange: OrangeColors
    
    public init(white: WhiteColors = WhiteColors(),
                ink: InkColors = InkColors(),
                product: ProductColors = ProductColors(),
                cloud: CloudColors = CloudColors(),
                red: RedColors = RedColors(),
                blue: BlueColors = BlueColors(),
                green: GreenColors = GreenColors(),
                orange: OrangeColors = OrangeColors()
    ) {
        
        self.white = white
        self.ink = ink
        self.product = product
        self.cloud = cloud
        self.red = red
        self.blue = blue
        self.orange = orange
        self.green = green
    }
}
