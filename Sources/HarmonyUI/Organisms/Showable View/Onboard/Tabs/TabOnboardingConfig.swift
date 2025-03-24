//
//  TabOnboardingConfig.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import Foundation

public struct TabOnboardingConfig {
    public var showSkip: Bool = true
    public var showBack: Bool = true
    public var showNext: Bool = true
    
    public init(showSkip: Bool = true,
                showBack: Bool = true,
                showNext: Bool = true) {
        
        self.showSkip = showSkip
        self.showBack = showBack
        self.showNext = showNext
    }
}
