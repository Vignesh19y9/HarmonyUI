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

public extension AppTypography {
    static var defultTypo: AppTypography { CustomTypography() }
}

//MARK: Default
public struct DefaultTypography: AppTypography {
    public let title: Font = .title
    public let subtitle: Font = .headline
    public let body: Font = .body
    public let caption: Font = .caption
    public let button: Font = .callout
    public let footnote: Font = .footnote
    
    public init() {}
}

public struct CustomTypography: AppTypography {
    public let title: Font = .custom("Inter-Bold", size: 24, relativeTo: .largeTitle)
    public let subtitle: Font = .custom("Inter-SemiBold", size: 20, relativeTo: .title)
    public let body: Font = .custom("Inter-Regular", size: 16, relativeTo: .body)
    public let caption: Font = .custom("Inter-Regular", size: 14, relativeTo: .caption)
    public let button: Font = .custom("Inter-Medium", size: 16, relativeTo: .headline)
    public let footnote: Font = .custom("Inter-Regular", size: 12, relativeTo: .footnote)
    
    public init() {
        FontLoader.registerFonts()
    }
}
