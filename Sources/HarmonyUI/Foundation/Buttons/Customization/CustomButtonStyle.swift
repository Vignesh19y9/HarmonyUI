//
//  CustomButtonStyle.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct CustomButtonStyle<LeadingIcon: View, TrailingIcon: View>: PrimitiveButtonStyle {
    @EnvironmentObject var appTheme: DefaultAppTheme
    @Environment(\.backgroundShape) private var backgroundShape
    @Environment(\.buttonSize) private var buttonSize
//    @Environment(\.status) private var status
    @Environment(\.textColor) private var textColor
    
    @ViewBuilder private let icon: LeadingIcon
    @ViewBuilder private let disclosureIcon: TrailingIcon
    
    public init(
        @ViewBuilder icon: () -> LeadingIcon = { EmptyView() },
        @ViewBuilder trailingIcon: () -> TrailingIcon = { EmptyView() }
    ) {
        self.icon = icon()
        self.disclosureIcon = trailingIcon()
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        CustomButtonContent(
            configuration: configuration,
            horizontalPadding: padding,
            verticalPadding: padding,
            cornerRadius: cornerRadius,
            hapticFeedback: .light(1)
        ) {
            icon
        } disclosureIcon: {
            disclosureIcon
        }
//        .textFontWeight(.medium)
        .textColor(textColor)
//        .textSize(textSize)
        .font(font.weight(.bold))
        .backgroundStyles(backgroundShape.inactive,
                          active: backgroundShape.active)
    }
    
    private var padding: CGFloat {
        switch buttonSize {
        case .regular: appTheme.spacing.small
        case .compact: appTheme.spacing.xsmall
        }
    }
    
    private var cornerRadius: CGFloat {
        appTheme.corners.medium
    }
    
    private var font: Font {
        switch buttonSize {
        case .regular: appTheme.typography.subtitle
        case .compact: appTheme.typography.body
        }
    }
    
//    private var hapticFeedback: HapticsProvider.HapticFeedbackType {
//        switch type {
//            case .primary, .prominent:          .light(1)
//            case .primarySubtle, .secondary:    .light(0.5)
//            case .critical, .criticalSubtle:    .notification(.error)
//        }
//    }
}
