//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct ProductColors: NormalColors, DarkerColors, LighterColors {
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
        normal: Color = Color("Product Normal", bundle: .harmony),
        active: Color = Color("Product Normal Active", bundle: .harmony),
        hover: Color = Color("Product Normal Hover", bundle: .harmony),
        dark: Color = Color("Product Dark", bundle: .harmony),
        darkActive: Color = Color("Product Dark Active", bundle: .harmony),
        darkHover: Color = Color("Product Dark Hover", bundle: .harmony),
        light: Color = Color("Product Light", bundle: .harmony),
        lightActive: Color = Color("Product Light Active", bundle: .harmony),
        lightHover: Color = Color("Product Light Hover", bundle: .harmony)
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
        self.normal = Color("Product Normal", bundle: bundle)
        self.active = Color("Product Normal Active", bundle: bundle)
        self.hover = Color("Product Normal Hover", bundle: bundle)
        self.dark = Color("Product Dark", bundle: bundle)
        self.darkActive = Color("Product Dark Active", bundle: bundle)
        self.darkHover = Color("Product Dark Hover", bundle: bundle)
        self.light = Color("Product Light", bundle: bundle)
        self.lightActive = Color("Product Light Active", bundle: bundle)
        self.lightHover = Color("Product Light Hover", bundle: bundle)
    }
}

