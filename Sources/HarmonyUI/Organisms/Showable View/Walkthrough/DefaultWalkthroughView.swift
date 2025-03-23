//
//  DefaultWalkthroughView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI
public struct DefaultWalkthroughView: WalkthroughShowProtocol {
    public var onComplete: (() -> Void)?
    
    public init(onComplete: (() -> Void)? = nil) {
        self.onComplete = onComplete
    }
    
    public var body: some View {
        VStack {
            Text("Feature Walkthrough")
                .font(.title)
                .padding()
            Button("Get Started") {
                onComplete?()
            }
        }
    }
}
