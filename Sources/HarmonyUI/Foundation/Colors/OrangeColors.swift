//
//  OrangeColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation
import SwiftUI

public struct OrangeColors: NormalColors, DarkerColors, LighterColors {
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
        normal: Color = Color("Orange Normal", bundle: .harmony),
        active: Color = Color("Orange Normal Active", bundle: .harmony),
        hover: Color = Color("Orange Normal Hover", bundle: .harmony),
        dark: Color = Color("Orange Dark", bundle: .harmony),
        darkActive: Color = Color("Orange Dark Active", bundle: .harmony),
        darkHover: Color = Color("Orange Dark Hover", bundle: .harmony),
        light: Color = Color("Orange Light", bundle: .harmony),
        lightActive: Color = Color("Orange Light Active", bundle: .harmony),
        lightHover: Color = Color("Orange Light Hover", bundle: .harmony)
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
        self.normal = Color("Orange Normal", bundle: bundle)
        self.active = Color("Orange Normal Active", bundle: bundle)
        self.hover = Color("Orange Normal Hover", bundle: bundle)
        self.dark = Color("Orange Dark", bundle: bundle)
        self.darkActive = Color("Orange Dark Active", bundle: bundle)
        self.darkHover = Color("Orange Dark Hover", bundle: bundle)
        self.light = Color("Orange Light", bundle: bundle)
        self.lightActive = Color("Orange Light Active", bundle: bundle)
        self.lightHover = Color("Orange Light Hover", bundle: bundle)
    }
}
