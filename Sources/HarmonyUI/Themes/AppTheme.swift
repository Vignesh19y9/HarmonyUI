//
//  AppTheme.swift
//  HarmonyUI
//
//  Created by Vignesh V on 21/03/25.
//

import SwiftUI

public protocol AppTheme: ObservableObject {
    var colors: AppColors { get }
    var typography: AppTypography { get }
    var spacing: AppSpacing { get }
    var corners: AppCorners { get }
    var borders: AppBorders { get }
    var elevation: AppElevation { get }
}

public extension AppTheme {
    static var defaultTheme: DefaultAppTheme{ DefaultAppTheme() }
}

// MARK: - Default Implementation
public class DefaultAppTheme: AppTheme {
    @Published public var colors: AppColors
    @Published public var typography: AppTypography
    @Published public var spacing: AppSpacing
    @Published public var corners: AppCorners
    @Published public var borders: AppBorders
    @Published public var elevation: AppElevation

    public init(
        colors: AppColors = DefaultColors(),
        typography: AppTypography = DefaultTypography(),
        spacing: AppSpacing = DefaultSpacing(),
        corners: AppCorners = DefaultCorners(),
        borders: AppBorders = DefaultBorders(),
        elevation: AppElevation = DefaultAppElevation()
    ) {
        self.colors = colors
        self.typography = typography
        self.spacing = spacing
        self.corners = corners
        self.borders = borders
        self.elevation = elevation
    }
}
