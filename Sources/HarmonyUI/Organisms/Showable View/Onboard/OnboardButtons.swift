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
        PrimarySubtleButton("Back", action: action)
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
        PrimaryButton("Next", action: action)
            .disabled(isDisabled)
    }
}

public struct OnboardGetStartedButton: View {
    let action: () -> Void
    let isDisabled: Bool
    
    public init(action: @escaping () -> Void, isDisabled: Bool) {
        self.action = action
        self.isDisabled = isDisabled
    }
    
    public var body: some View {
        PrimaryButton("Get Started", action: action)
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
        SecondaryButton("Skip", action: action)
            .disabled(isDisabled)
    }
}


#Preview {
    Group {
        OnboardBackButton(action: {}, isDisabled: false)
        OnboardNextButton(action: {}, isDisabled: false)
        OnboardSkipButton(action: {}, isDisabled: false)
    }
    .environmentObject(DefaultAppTheme())
}
