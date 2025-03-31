//
//  InkColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct InkColors: NormalColors, DarkerColors, LighterColors {
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
        normal: Color = Color("Ink Normal", bundle: .harmony),
        active: Color = Color("Ink Normal Active", bundle: .harmony),
        hover: Color = Color("Ink Normal Hover", bundle: .harmony),
        dark: Color = Color("Ink Dark", bundle: .harmony),
        darkActive: Color = Color("Ink Dark Active", bundle: .harmony),
        darkHover: Color = Color("Ink Dark Hover", bundle: .harmony),
        light: Color = Color("Ink Light", bundle: .harmony),
        lightActive: Color = Color("Ink Light Active", bundle: .harmony),
        lightHover: Color = Color("Ink Light Hover", bundle: .harmony)
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
}

