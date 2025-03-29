//
//  PrimaryButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct PrimaryButton<LeadingIcon: View,
                    Label: View,
                    TrailingIcon: View>: View {
    
    @EnvironmentObject var appTheme: DefaultAppTheme
    
    @ViewBuilder private let leadingIcon: LeadingIcon
    @ViewBuilder private let label: Label
    @ViewBuilder private let trailingIcon: TrailingIcon
    
    private let action: () -> Void
    
    var buttonColor: AppButtonColor {
        appTheme.colors.buttonColor
    }
    
    public init(
        action: @escaping () -> Void,
        @ViewBuilder label: () -> Label,
        @ViewBuilder icon: () -> LeadingIcon = { EmptyView() },
        @ViewBuilder disclosureIcon: () -> TrailingIcon = { EmptyView() }
    ) {
        self.action = action
        self.label = label()
        self.leadingIcon = icon()
        self.trailingIcon = disclosureIcon()
    }
    
    public var body: some View {
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


extension PrimaryButton {
    public init(
        _ title: String,
        action: @escaping () -> Void
    ) where LeadingIcon == EmptyView, Label == Text, TrailingIcon == EmptyView {
        self.action = action
        self.label = Text(title)
        self.leadingIcon = EmptyView()
        self.trailingIcon = EmptyView()
    }
}

#Preview {
    VStack {
        PrimaryButton(action: {
            
        }, label: {
            Text("Hello, World!")
        }, icon: {
            Image(systemName: "square.and.arrow.up")
        }, disclosureIcon: {
            Image(systemName: "square.and.arrow.up")
        })
        
        PrimaryButton("Hello", action: {})
    }
    .environmentObject(DefaultAppTheme())
    .padding()
}
