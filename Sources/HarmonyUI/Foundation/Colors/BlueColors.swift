//
//  BlueColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation
import SwiftUI

public struct BlueColors: NormalColors, DarkerColors, LighterColors {
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
        normal: Color = Color("Blue Normal", bundle: .harmony),
        active: Color = Color("Blue Normal Active", bundle: .harmony),
        hover: Color = Color("Blue Normal Hover", bundle: .harmony),
        dark: Color = Color("Blue Dark", bundle: .harmony),
        darkActive: Color = Color("Blue Dark Active", bundle: .harmony),
        darkHover: Color = Color("Blue Dark Hover", bundle: .harmony),
        light: Color = Color("Blue Light", bundle: .harmony),
        lightActive: Color = Color("Blue Light Active", bundle: .harmony),
        lightHover: Color = Color("Blue Light Hover", bundle: .harmony)
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
        self.normal = Color("Blue Normal", bundle: bundle)
        self.active = Color("Blue Normal Active", bundle: bundle)
        self.hover = Color("Blue Normal Hover", bundle: bundle)
        self.dark = Color("Blue Dark", bundle: bundle)
        self.darkActive = Color("Blue Dark Active", bundle: bundle)
        self.darkHover = Color("Blue Dark Hover", bundle: bundle)
        self.light = Color("Blue Light", bundle: bundle)
        self.lightActive = Color("Blue Light Active", bundle: bundle)
        self.lightHover = Color("Blue Light Hover", bundle: bundle)
    }
}
