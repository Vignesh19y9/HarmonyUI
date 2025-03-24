//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import SwiftUI

public struct ShowContainer {
    let view: AnyView
    
    @MainActor
    var shouldShow: Bool {
        showProtocol.shouldShow
    }
    
    private let showProtocol: any ShowProtocol

    public init<S: ShowProtocol>(_ view: S) {
        self.view = AnyView(view)
        self.showProtocol = view
    }
}
