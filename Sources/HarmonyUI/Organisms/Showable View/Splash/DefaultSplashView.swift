//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultSplashView: SplashShowProtocol {
    @Environment(\.showManager) public var showManager
    public var id: UUID = UUID()
    public var shouldShow: Bool = true
    public var onComplete: (() -> Void)?
    
    public init(onComplete: (() -> Void)? = nil) {
        self.onComplete = onComplete
    }
    
    public var body: some View {
        VStack {
            Text("Harmony Splash")
                .font(.largeTitle)
                .bold()
            
            ProgressView()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                performOnComplete()
            }
        }
    }
}
