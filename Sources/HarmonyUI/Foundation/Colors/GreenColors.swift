//
//  GreenColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation
import SwiftUI

public struct GreenColors: NormalColors, DarkerColors, LighterColors {
    public var normal: Color
    public var active: Color
    public var hover: Color
    
    public var dark: Color
    public var darkActive: Color
    public var darkHover: Color
    
    public var light: Color
    public var lightActive: Color
    public var lightHover: Color
    
    public init(
        normal: Color = Color("Green Normal", bundle: .harmony),
        active: Color = Color("Green Normal Active", bundle: .harmony),
        hover: Color = Color("Green Normal Hover", bundle: .harmony),
        dark: Color = Color("Green Dark", bundle: .harmony),
        darkActive: Color = Color("Green Dark Active", bundle: .harmony),
        darkHover: Color = Color("Green Dark Hover", bundle: .harmony),
        light: Color = Color("Green Light", bundle: .harmony),
        lightActive: Color = Color("Green Light Active", bundle: .harmony),
        lightHover: Color = Color("Green Light Hover", bundle: .harmony)
    ) {
        self.normal = normal
        self.active = active
        self.hover = hover
        self.dark = dark
        self.darkActive = darkActive
        self.darkHover = darkHover
        self.light = light
        self.lightActive = lightActive
        self.lightHover = lightHover
    }
    
    public init(bundle: Bundle = .harmony) {
        self.normal = Color("Green Normal", bundle: bundle)
        self.active = Color("Green Normal Active", bundle: bundle)
        self.hover = Color("Green Normal Hover", bundle: bundle)
        self.dark = Color("Green Dark", bundle: bundle)
        self.darkActive = Color("Green Dark Active", bundle: bundle)
        self.darkHover = Color("Green Dark Hover", bundle: bundle)
        self.light = Color("Green Light", bundle: bundle)
        self.lightActive = Color("Green Light Active", bundle: bundle)
        self.lightHover = Color("Green Light Hover", bundle: bundle)
    }
}
