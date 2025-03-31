//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultSplashView<Content: View>: SplashShowProtocol {
    @EnvironmentObject var appTheme: DefaultAppTheme
    @Environment(\.showManager) public var showManager
    
    public var id: UUID = UUID()
    public var shouldShow: Bool = true
    public var onComplete: (() -> Void)?
    public var duration: Double
    public var content: () -> Content
    
    public init(
        duration: Double = 2,
        onComplete: (() -> Void)? = nil,
        @ViewBuilder content: @escaping () -> Content =
        {
            Text("Harmony Splash")
        }
    ) {
        
        self.duration = duration
        self.content = content
        self.onComplete = onComplete
    }
    
    public var body: some View {
        content()
            .font(appTheme.typography.title)
            .expand()
            .themeBackground()
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    performOnComplete()
                }
            }
    }
}

