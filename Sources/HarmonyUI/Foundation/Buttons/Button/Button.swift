//
//  SwiftUIView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

struct CustomButton<LeadingIcon: View,
                    Label: View,
                    TrailingIcon: View>: View {
    
    @EnvironmentObject var appTheme: DefaultAppTheme
    
    @ViewBuilder private let leadingIcon: LeadingIcon
    @ViewBuilder private let label: Label
    @ViewBuilder private let trailingIcon: TrailingIcon
    
    private let type: ButtonType
    private let action: () -> Void
    
    var buttonColor: AppButtonColor {
        appTheme.colors.buttonColor
    }
    
    public init(
        type: ButtonType = .primary,
        action: @escaping () -> Void,
        @ViewBuilder label: () -> Label,
        @ViewBuilder icon: () -> LeadingIcon = { EmptyView() },
        @ViewBuilder disclosureIcon: () -> TrailingIcon = { EmptyView() }
    ) {
        self.type = type
        self.action = action
        self.label = label()
        self.leadingIcon = icon()
        self.trailingIcon = disclosureIcon()
    }
    
    var body: some View {
        Button(action: { action() }, label: { label })
            .buttonStyle(
                CustomButtonStyle(
                    icon: {
                        leadingIcon
                    },
                    trailingIcon: {
                        trailingIcon
                    } )
            )
            .backgroundStyles(buttonColor.primary.background,
                              active: buttonColor.primary.backgroundPressed)
            .textColor(buttonColor.primary.foreground)
    }
}

#Preview {
    CustomButton(action: {
        
    }, label: {
        Text("Hello, World!")
    }, icon: {
        Image(systemName: "square.and.arrow.up")
    }, disclosureIcon: {
        Image(systemName: "square.and.arrow.up")
    })
    .environmentObject(DefaultAppTheme())
    .idealSize()
}
