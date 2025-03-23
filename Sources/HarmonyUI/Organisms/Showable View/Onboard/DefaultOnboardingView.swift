//
//  DefaultOnboardingView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultOnboardingView: OnboardingShowProtocol {
    public var onComplete: (() -> Void)?
    
    public init(onComplete: (() -> Void)? = nil) {
        self.onComplete = onComplete
    }
    
    public var body: some View {
        VStack {
            Text("Onboarding Step")
                .font(.title)
                .padding()
            Button("Continue") {
                onComplete?()
            }
        }
    }
}

