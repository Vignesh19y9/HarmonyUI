//
//  AppSpacing.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import Foundation

public protocol AppSpacing {
    var xxxsmall: CGFloat { get }
    var xxsmall: CGFloat { get }
    var xsmall: CGFloat { get }
    var small: CGFloat { get }
    
    var medium: CGFloat { get }
    var xmedium: CGFloat { get }
    
    var large: CGFloat { get }
    var xlarge: CGFloat { get }
    var xxlarge: CGFloat { get }
    var xxxlarge: CGFloat { get }
}

//MARK: Default
public struct DefaultSpacing: AppSpacing {
    public let xxxsmall: CGFloat = 2
    public let xxsmall: CGFloat = 4
    public let xsmall: CGFloat = 8
    public let small: CGFloat = 12
    
    public let medium: CGFloat = 16
    public let xmedium: CGFloat = 20
    
    public let large: CGFloat = 24
    public let xlarge: CGFloat = 32
    public let xxlarge: CGFloat = 44
    public let xxxlarge: CGFloat = 60
    
    public init() {}
}
