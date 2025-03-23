//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import Foundation
import SwiftUI

public struct MainAppContainer<S: SplashShowProtocol,
                               O: OnboardingShowProtocol,
                               P: PermissionsShowProtocol,
                               W: WalkthroughShowProtocol,
                               C: View>: View {
    
    @State private var currentStep: Step = .splash
    
    public let splash: S
    public let onboarding: O
    public let permissions: P?
    public let walkthrough: W?
    public let content: C

    public enum Step {
        case splash, onboarding, permissions, walkthrough, content
    }

    public init(splash: S = DefaultSplashView(),
                onboarding: O = DefaultOnboardingView(),
                permissions: P? = DefaultPermissionsView(),
                walkthrough: W? = DefaultWalkthroughView(),
                content: C) {
        
        self.splash = splash
        self.onboarding = onboarding
        self.permissions = permissions
        self.walkthrough = walkthrough
        self.content = content
    }

    public var body: some View {
        Group {
            switch currentStep {
            case .splash:
                splash.addOnComplete {
                    moveTo(.onboarding)
                }
            case .onboarding:
                onboarding.addOnComplete {
                    moveTo(permissions != nil ? .permissions : .walkthrough)
                }
            case .permissions:
                if let permissions {
                    permissions.addOnComplete {
                        moveTo(walkthrough != nil ? .walkthrough : .content)
                    }
                }
            case .walkthrough:
                if let walkthrough {
                    walkthrough.addOnComplete {
                        moveTo(.content)
                    }
                }
            case .content:
                content
            }
        }
    }
    
    func moveTo(_ step: Step) {
        withAnimation {
            self.currentStep = step
        }
    }
}
