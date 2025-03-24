//
//  OnboardingData.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import SwiftUI

public protocol OnboardingData: Identifiable {
    var id: UUID { get }
}

public struct TabOnboardData: OnboardingData {
    public var id: UUID = .init()
    public var title: String
    public var text: String
    
    public init(id: UUID = .init(), title: String, text: String) {
        self.id = id
        self.title = title
        self.text = text
    }
}
