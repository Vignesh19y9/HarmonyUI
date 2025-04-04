//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import Foundation
import SwiftUI

public struct MainAppContainer<S: ShowProtocol, C: View>: View {
    @AppStorage(UserKeys.appearance.key) private var appearance: Appearance = .system
    @StateObject private var showManager = ShowManager()
    
    public let splash: S
    public let others: [ShowContainer]
    public let content: C
    
    @State private var currentIndex: Int = 0
    
    private var filteredOthers: [ShowContainer]
    
    private var currentScreen: AnyView {
        if currentIndex == 0 {
            return AnyView(splash)
        } else if currentIndex <= filteredOthers.count {
            return filteredOthers[currentIndex - 1].view
        } else {
            return AnyView(content)
        }
    }
    
    public init(splash: S = DefaultSplashView(),
                others: [ShowContainer] = [
                    ShowContainer(DefaultOnboardingView()),
                    ShowContainer(DefaultPermissionsView()),
                    ShowContainer(DefaultWalkthroughView())],
                content: C) {
        
        self.splash = splash
        self.others = others
        self.content = content
        
        self.filteredOthers = others.filter { $0.shouldShow }
    }
    
    public var body: some View {
        VStack {
            currentScreen
                .environment(\.showManager, showManager)
        }
        .onChange(of: showManager.completedScreens) { _ in
            moveToNext()
        }
        .preferredColorScheme(appearance.colorScheme)
    }
    
    private func moveToNext() {
        guard currentIndex < filteredOthers.count else {
            withAnimation {
                currentIndex = filteredOthers.count + 1
            }
            return
        }
        
        withAnimation {
            currentIndex += 1
        }
    }
}

#Preview {
    MainAppContainer(
        splash: DefaultSplashView(),
        others: [
            ShowContainer(DefaultOnboardingView()),
            ShowContainer(DefaultPermissionsView()),
            ShowContainer(DefaultWalkthroughView())
        ],
        content: EmptyView()
    )
}
