//
//  AppTypography.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppTypography {
    var title: Font { get }
    var subtitle: Font { get }
    var body: Font { get }
    var caption: Font { get }
    var button: Font { get }
    var footnote: Font { get }
}


//MARK: Default
public struct DefaultTypography: AppTypography {
    public let title: Font = .custom("Satoshi-Black", size: 24, relativeTo: .largeTitle)
    public let subtitle: Font = .custom("Satoshi-Bold", size: 20, relativeTo: .title)
    public let body: Font = .custom("Satoshi-Regular", size: 16, relativeTo: .body)
    public let caption: Font = .custom("Satoshi-Regular", size: 14, relativeTo: .caption)
    public let button: Font = .custom("Satoshi-Medium", size: 16, relativeTo: .headline)
    public let footnote: Font = .custom("Satoshi-Regular", size: 12, relativeTo: .footnote)
    
    public init() {
        FontLoader.registerFonts()
    }
}
