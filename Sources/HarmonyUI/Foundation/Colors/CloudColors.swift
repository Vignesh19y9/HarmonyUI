//
//  CloudColors.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation
import SwiftUI

public struct CloudColors: NormalColors, DarkerColors, LighterColors {
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
        normal: Color = Color("Cloud Normal", bundle: .harmony),
        active: Color = Color("Cloud Normal Active", bundle: .harmony),
        hover: Color = Color("Cloud Normal Hover", bundle: .harmony),
        dark: Color = Color("Cloud Dark", bundle: .harmony),
        darkActive: Color = Color("Cloud Dark Active", bundle: .harmony),
        darkHover: Color = Color("Cloud Dark Hover", bundle: .harmony),
        light: Color = Color("Cloud Light", bundle: .harmony),
        lightActive: Color = Color("Cloud Light Active", bundle: .harmony),
        lightHover: Color = Color("Cloud Light Hover", bundle: .harmony)
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
        self.normal = Color("Cloud Normal", bundle: bundle)
        self.active = Color("Cloud Normal Active", bundle: bundle)
        self.hover = Color("Cloud Normal Hover", bundle: bundle)
        self.dark = Color("Cloud Dark", bundle: bundle)
        self.darkActive = Color("Cloud Dark Active", bundle: bundle)
        self.darkHover = Color("Cloud Dark Hover", bundle: bundle)
        self.light = Color("Cloud Light", bundle: bundle)
        self.lightActive = Color("Cloud Light Active", bundle: bundle)
        self.lightHover = Color("Cloud Light Hover", bundle: bundle)
    }
}
