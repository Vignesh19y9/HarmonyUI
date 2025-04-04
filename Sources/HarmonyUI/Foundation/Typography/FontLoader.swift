//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation
import SwiftUI

public struct FontLoader {
    nonisolated(unsafe) static var didRegister: Bool = false
    
    public static func registerFonts() {
        guard !didRegister else { return }
        
        let fontNames = [
            "Satoshi-Black",
            "Satoshi-Bold",
            "Satoshi-Medium",
            "Satoshi-Regular"
        ]
        
        fontNames.forEach { registerFont(named: $0) }
        
        didRegister = true
    }

    private static func registerFont(named name: String) {
        guard let url = Bundle.module.url(forResource: name, withExtension: "otf"),
              let fontDataProvider = CGDataProvider(url: url as CFURL),
              let font = CGFont(fontDataProvider)
        else { return }
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print("⚠️ Failed to register font: \(name)")
        }
    }
}

