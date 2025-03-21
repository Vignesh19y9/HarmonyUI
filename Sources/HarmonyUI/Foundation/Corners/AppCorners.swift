//
//  AppCorners.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation

public protocol AppCorners {
    var none: CGFloat { get }
    var xsmall: CGFloat { get }
    var small: CGFloat { get }
    var medium: CGFloat { get }
    var large: CGFloat { get }
    var xlarge: CGFloat { get }
    var full: CGFloat { get }
}

public extension AppSpacing {
    static var defultCorners: AppCorners { DefaultCorners() }
}

//MARK: Default
public struct DefaultCorners: AppCorners {
    public let none: CGFloat = 0
    public let xsmall: CGFloat = 4
    public let small: CGFloat = 8
    public let medium: CGFloat = 12
    public let large: CGFloat = 16
    public let xlarge: CGFloat = 24
    public let full: CGFloat = .infinity
    
    public init() {}
}
