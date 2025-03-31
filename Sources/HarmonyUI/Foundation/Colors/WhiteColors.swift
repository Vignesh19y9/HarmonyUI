//
//  WhiteColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct WhiteColors: NormalColors, DarkLightColors {
    public var normal: Color
    public var active: Color
    public var hover: Color
    
    public var darker: Color
    public var lighter: Color
    
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
    
    public init(bundle: Bundle = .harmony) {
        self.normal = Color("White Normal", bundle: bundle)
        self.active = Color("White Active", bundle: bundle)
        self.darker = Color("White Darker", bundle: bundle)
        self.lighter = Color("White Lighter", bundle: bundle)
        self.hover = Color("White Hover", bundle: bundle)
    }
}

/// Consider this as paper. 
