//
//  OnboardingTabView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import Foundation
import SwiftUI

public struct OnboardingTabView<Data: OnboardingData, Content: TabLoadableView>: OnboardingShowProtocol {
    
    @EnvironmentObject var appTheme: DefaultAppTheme
    @Environment(\.showManager) public var showManager
    @Binding public var currentPage: Int
    @Binding public var pageLoaded: Bool
    @State private var isButtonsDisabled = false
    @AppStorage(UserKeys.hasOnboarded.key) public var shouldShow = false
    
    public let id = UUID()
    public let datas: [Data]
    public let config: TabOnboardingConfig
    public var onComplete: (() -> Void)?
    public let contentProvider: (Data, Int) -> Content
    
    var islastPage: Bool {
        currentPage == datas.count - 1
    }
    
    var isFirstPage: Bool {
        currentPage == 0
    }
    
    public init(
        config: TabOnboardingConfig = .init(),
        datas: [Data],
        currentPage: Binding<Int>,
        pageLoaded: Binding<Bool>,
        onComplete: (() -> Void)? = nil,
        @ViewBuilder contentProvider: @escaping (Data, Int) -> Content
    ) {
        self._currentPage = currentPage
        self._pageLoaded = pageLoaded
        self.datas = datas
        self.config = config
        self.onComplete = onComplete
        self.contentProvider = contentProvider
    }
    
    public var body: some View {
        VStack {
            topSection

            TabView(selection: $currentPage) {
                ForEach(datas.indices, id: \.self) { index in
                    contentProvider(datas[index], index)
                        .tag(index)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            
            bottomSection
        }
        .padding(appTheme.spacing.medium)
    }
    
    @ViewBuilder
    private var topSection: some View {
        if config.showSkip && !islastPage {
            HStack {
                Spacer()
                OnboardSkipButton(
                    action: skip,
                    isDisabled: isButtonsDisabled || !pageLoaded
                )
                .idealSize()
                .buttonSize(.compact)
            }
        }
    }
    
    @ViewBuilder
    private var bottomSection: some View {
        VStack {
            DotIndicatorView(dots: datas.count, index: currentPage)
            
            HStack {
                if config.showBack && !isFirstPage && !islastPage {
                    OnboardBackButton(action: goBack, isDisabled: isButtonsDisabled || !pageLoaded || currentPage == 0)
                }
                
                if config.showNext && !islastPage {
                    OnboardNextButton(action: goNext,
                                      isDisabled: isButtonsDisabled || !pageLoaded)
                }
                
                if config.showNext && islastPage {
                    OnboardGetStartedButton(action: goNext,
                                            isDisabled: isButtonsDisabled || !pageLoaded)
                }
            }
        }
    }
    
    private func goNext() {
        guard pageLoaded, !islastPage else {
            if pageLoaded { completeOnboarding() }
            return
        }
        animatePageTransition { currentPage += 1 }
    }
    
    private func goBack() {
        guard pageLoaded, !isFirstPage else { return }
        animatePageTransition { currentPage -= 1 }
    }
    
    private func skip() {
        guard pageLoaded else { return }
        animatePageTransition {
            currentPage = datas.count - 1
        }
    }
    
    private func animatePageTransition(_ action: @escaping () -> Void) {
        isButtonsDisabled = true
        withAnimation {
            action()
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isButtonsDisabled = false
        }
    }
    
    private func completeOnboarding() {
        shouldShow = false
        onComplete?()
    }
}

// SwiftUI Preview
#Preview {
    @State var currentPage: Int = 0
    @State var pageLoaded: Bool = false
    
    return OnboardingTabView(
        config: TabOnboardingConfig(showSkip: true,
                                    showBack: true,
                                    showNext: true),
        datas: [
            TabOnboardData(title: "Title 1", text: "Text 1"),
            TabOnboardData(title: "Title 2", text: "Text 2"),
            TabOnboardData(title: "Title 3", text: "Text 3")
        ],
        currentPage: $currentPage,
        pageLoaded: $pageLoaded,
        onComplete: { print("Onboarding Complete") }
    ) { data, _ in
        
        TabLoadedView(loaded: $pageLoaded, data: data)
    }
    .environmentObject(DefaultAppTheme())
}
