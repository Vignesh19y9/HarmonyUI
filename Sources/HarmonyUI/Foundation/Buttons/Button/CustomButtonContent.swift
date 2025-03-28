//
//  CustomButtonContent.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

struct CustomButtonContent<LeadingIcon: View, TrailingIcon: View>: View {
    
    @Environment(\.backgroundShape) private var backgroundShape
    @Environment(\.iconColor) private var iconColor
    @Environment(\.idealSize) private var idealSize
    @Environment(\.isHapticsEnabled) private var isHapticsEnabled
    @Environment(\.textColor) private var textColor
    
    let configuration: PrimitiveButtonStyleConfiguration
    var textActiveColor: Color? = nil
    var horizontalPadding: CGFloat = 12
    var horizontalLabelPadding: CGFloat = 4
    var verticalPadding: CGFloat = 12
    var horizontalBackgroundPadding: CGFloat = 0
    var verticalBackgroundPadding: CGFloat = 0
    var cornerRadius: CGFloat = 6
    var spacing: CGFloat = 4
    var hapticFeedback: HapticsProvider.HapticFeedbackType = .light()
    
    @ViewBuilder let icon: LeadingIcon
    @ViewBuilder let disclosureIcon: TrailingIcon
    
    @State private var isPressed = false
    
    var body: some View {
        HStack {
            HStack(spacing: spacing) {
                icon
                configuration.label
                    .padding(.horizontal, horizontalLabelPadding)
                    .layoutPriority(1)
                disclosureIcon
                    .fixedSize(horizontal: idealSize.horizontal == true, vertical: false)
            }
            .frame(maxWidth: idealSize.horizontal == true ? nil : .infinity)
        }
        .padding(.horizontal, horizontalPadding)
        .padding(.vertical, verticalPadding)
        .padding(.horizontal, horizontalBackgroundPadding)
        .padding(.vertical, verticalBackgroundPadding)
        .background(
            backgroundView
        )
        .cornerRadius(cornerRadius)
        // This workaround can be replaced with `containerRelativeFrame` in iOS17
        .padding(.horizontal, -horizontalBackgroundPadding)
        .padding(.vertical, -verticalBackgroundPadding)
        .textColor(isPressed ? textActiveColor ?? textColor : textColor)
        .foregroundColor(isPressed ? textActiveColor ?? textColor : textColor)
        .contentShape(Rectangle())
        ._onButtonGesture { isPressed in
            self.isPressed = isPressed
        } perform: {
            if isHapticsEnabled {
                HapticsProvider.sendHapticFeedback(hapticFeedback)
            }

            configuration.trigger()
        }
    }
    
    @ViewBuilder var backgroundView: some View {
        if isPressed {
            backgroundShape.activeView
        } else {
            backgroundShape.inactiveView
        }
    }
}
