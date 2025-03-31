//
//  WhiteColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct WhiteColors: NormalColors {
    public var normal: Color
    public var active: Color
    public var darker: Color
    public var lighter: Color
    public var hover: Color
    
    public init(
        normal: Color = Color("White Normal", bundle: .harmony),
        active: Color = Color("White Active", bundle: .harmony),
        darker: Color = Color("White Darker", bundle: .harmony),
        lighter: Color = Color("White Lighter", bundle: .harmony),
        hover: Color = Color("White Hover", bundle: .harmony)
    ) {
        self.normal = normal
        self.active = active
        self.darker = darker
        self.lighter = lighter
        self.hover = hover
    }
}
