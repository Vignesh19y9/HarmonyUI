//
//  OnboardButtons.swift
//  HarmonyUI
//
//  Created by Vignesh V on 28/03/25.
//

import SwiftUI

public struct OnboardBackButton: View {
    let action: () -> Void
    let isDisabled: Bool
    
    public init(action: @escaping () -> Void, isDisabled: Bool) {
        self.action = action
        self.isDisabled = isDisabled
    }
    
    public var body: some View {
        Button("Back", action: action)
            .disabled(isDisabled)
    }
}

public struct OnboardNextButton: View {
    let action: () -> Void
    let isDisabled: Bool
    
    public init(action: @escaping () -> Void, isDisabled: Bool) {
        self.action = action
        self.isDisabled = isDisabled
    }
    
    public var body: some View {
        Button("Next", action: action)
            .disabled(isDisabled)
    }
}


public struct OnboardSkipButton: View {
    let action: () -> Void
    let isDisabled: Bool
    
    public init(action: @escaping () -> Void, isDisabled: Bool) {
        self.action = action
        self.isDisabled = isDisabled
    }
    
    public var body: some View {
        Button("Skip", action: action)
            .disabled(isDisabled)
    }
}


#Preview {
    OnboardBackButton(action: {}, isDisabled: false)
    OnboardNextButton(action: {}, isDisabled: false)
    OnboardSkipButton(action: {}, isDisabled: false)
}
