//
//  DefaultWalkthroughView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI
public struct DefaultWalkthroughView: WalkthroughShowProtocol {
    @Environment(\.showManager) public var showManager
    public var id: UUID = UUID()
    public var shouldShow: Bool = true
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
                performOnComplete()
            }
        }
    }
}
