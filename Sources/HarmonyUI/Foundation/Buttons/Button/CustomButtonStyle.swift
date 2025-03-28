//
//  CustomButtonStyle.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct CustomButtonStyle<LeadingIcon: View, TrailingIcon: View>: PrimitiveButtonStyle {
    
    @Environment(\.backgroundShape) private var backgroundShape
    @Environment(\.buttonSize) private var buttonSize
//    @Environment(\.status) private var status
    @Environment(\.textColor) private var textColor
    
    private var type: ButtonType
    @ViewBuilder private let icon: LeadingIcon
    @ViewBuilder private let disclosureIcon: TrailingIcon
    
    public init(
        type: ButtonType = .primary,
        @ViewBuilder icon: () -> LeadingIcon = { EmptyView() },
        @ViewBuilder trailingIcon: () -> TrailingIcon = { EmptyView() }
    ) {
        self.type = type
        self.icon = icon()
        self.disclosureIcon = trailingIcon()
    }
    
    public func makeBody(configuration: Configuration) -> some View {
        CustomButtonContent(
            configuration: configuration,
            horizontalPadding: padding,
            verticalPadding: padding,
            hapticFeedback: hapticFeedback
        ) {
            icon
        } disclosureIcon: {
            disclosureIcon
        }
//        .textFontWeight(.medium)
        .textColor(textColor)
//        .textSize(textSize)
        .backgroundStyles(backgroundShape.inactive,
                          active: backgroundShape.active)
    }
    
    private var padding: CGFloat {
        switch buttonSize {
            case .regular: 12
            case .compact: 8
        }
    }
    
    private var hapticFeedback: HapticsProvider.HapticFeedbackType {
        switch type {
            case .primary, .prominent:          .light(1)
            case .primarySubtle, .secondary:    .light(0.5)
            case .critical, .criticalSubtle:    .notification(.error)
        }
    }
}
