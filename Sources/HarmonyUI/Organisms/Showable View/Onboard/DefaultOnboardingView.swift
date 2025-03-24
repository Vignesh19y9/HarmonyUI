//
//  DefaultOnboardingView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultOnboardingView: OnboardingShowProtocol {
    @Environment(\.showManager) public var showManager
    @State public var currentPage: Int = 0
    @State public var pageLoaded: Bool = true
    @State public var shouldShow: Bool = true
    
    public var id: UUID = UUID()
    public var onComplete: (() -> Void)?
    
    private let datas: [TabOnboardData] = [
        TabOnboardData(title: "Title 1", text: "Text 1"),
        TabOnboardData(title: "Title 2", text: "Text 2"),
        TabOnboardData(title: "Title 3", text: "Text 3")
    ]
    
    public init(onComplete: (() -> Void)? = nil) {
        self.onComplete = onComplete
    }
    
    public var body: some View {
        OnboardingTabView(datas: datas,
                          currentPage: $currentPage,
                          pageLoaded: $pageLoaded,
                          onComplete: onCompleted) { data, index  in
            //TODO: with data, index pass coordinator to Survey Loaded View
            TabLoadedView(loaded: $pageLoaded, data: data)
        }
    }
    
    func onCompleted() {
        shouldShow = false
        performOnComplete()
    }
}

