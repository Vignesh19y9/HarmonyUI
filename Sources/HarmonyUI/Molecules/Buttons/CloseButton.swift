//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 01/04/25.
//

import SwiftUI

public struct CloseButton: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    @Environment(\.dismiss) var dismiss
    let action: () -> Void
    let doDismiss: Bool
    
    public init(action: @escaping () -> Void) {
        self.action = action
        doDismiss = false
    }
    
    public init (doDismiss: Bool = false) {
        self.action = { }
        self.doDismiss = doDismiss
    }
    
    public var body: some View {
        Button(action: {
            if doDismiss {
                dismiss()
            } else {
                action()
            }
        }) {
            Image(systemName: "xmark.circle.fill")
                .foregroundStyle(appTheme.colors.ink.light)
        }
    }
}

#Preview {
    CloseButton()
        .environmentObject(DefaultAppTheme())
}
