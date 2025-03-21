//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation

public protocol AppBorders {
    var none: CGFloat { get }
    var thin: CGFloat { get }
    var regular: CGFloat { get }
    var thick: CGFloat { get }
    var extraThick: CGFloat { get }
}

public extension AppBorders {
    static var defaultBorders: AppBorders{ DefaultBorders() }
}

// MARK: - Default Implementation
public struct DefaultBorders: AppBorders {
    public let none: CGFloat = 0
    public let thin: CGFloat = 1
    public let regular: CGFloat = 2
    public let thick: CGFloat = 4
    public let extraThick: CGFloat = 6
    
    public init() {}
}
