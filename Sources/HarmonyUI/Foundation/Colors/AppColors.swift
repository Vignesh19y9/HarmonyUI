//
//  AppColor.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppColors {
    var primary: Color { get }
    var secondary: Color { get }
    
    var background: Color { get }
    var foreground: Color { get }
    
    var border: Color { get }
    
    var success: Color { get }
    var warning: Color { get }
    var error: Color { get }
}

public extension AppColors {
    static var defaultColors: AppBorders{ DefaultBorders() }
}

// MARK: - Default Implementation
public struct DefaultColors: AppColors {
    public let primary: Color = .blue
    public let secondary: Color = .gray
    public let background: Color = .white
    public let foreground: Color = .black
    public let border: Color = .gray
    public let success: Color = .green
    public let warning: Color = .yellow
    public let error: Color = .red
    
    public init() {}
}
