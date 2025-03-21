//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation
import SwiftUI

public struct FontLoader {
    public static func registerFonts() {
        let fontNames = [
            "Inter-Regular",
            "Inter-Bold",
            "Inter-SemiBold",
            "Inter-Medium"
        ]
        
        fontNames.forEach { registerFont(named: $0) }
    }

    private static func registerFont(named name: String) {
        guard let url = Bundle.module.url(forResource: name, withExtension: "ttf"),
              let fontDataProvider = CGDataProvider(url: url as CFURL),
              let font = CGFont(fontDataProvider)
        else { return }
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            print("⚠️ Failed to register font: \(name)")
        }
    }
}

