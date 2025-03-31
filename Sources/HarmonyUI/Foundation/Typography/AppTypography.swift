//
//  AppTypography.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppTypography {
    var title1: CFont { get }
    var title2: CFont { get }
    var title3: CFont { get }
    var title4: CFont { get }
    var title5: CFont { get }
    var title6: CFont { get }
    
    var textSmall: CFont { get }
    var textNorml: CFont { get }
    var textLarge: CFont { get }
    var textXLarg: CFont { get }
}

public struct CFont {
    let name: String
    let size: CGFloat
    let lineHeight: CGFloat
    
    public init(name: String, size: CGFloat, lineHeight: CGFloat) {
        self.name = name
        self.size = size
        self.lineHeight = lineHeight
    }
    
    public var font: Font {
        Font.custom(name, size: size)
    }
}

//MARK: Default
public struct DefaultTypography: AppTypography {
    public var title1: CFont = .init(name: "Satoshi-Regular", size: 28, lineHeight: 32)
    public var title2: CFont = .init(name: "Satoshi-Regular", size: 22, lineHeight: 28)
    public var title3: CFont = .init(name: "Satoshi-Regular", size: 18, lineHeight: 24)
    public var title4: CFont = .init(name: "Satoshi-Regular", size: 16, lineHeight: 20)
    public var title5: CFont = .init(name: "Satoshi-Regular", size: 15, lineHeight: 20)
    public var title6: CFont = .init(name: "Satoshi-Regular", size: 13, lineHeight: 16)
    
    public var textSmall: CFont = .init(name: "Satoshi-Regular", size: 13, lineHeight: 16)
    public var textNorml: CFont = .init(name: "Satoshi-Regular", size: 15, lineHeight: 20)
    public var textLarge: CFont = .init(name: "Satoshi-Regular", size: 16, lineHeight: 24)
    public var textXLarg: CFont = .init(name: "Satoshi-Regular", size: 18, lineHeight: 24)
    
    public init() {
        FontLoader.registerFonts()
    }
}
