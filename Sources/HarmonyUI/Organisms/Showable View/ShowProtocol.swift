//
//  ShowProtocol.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public protocol ShowProtocol: View {
    var onComplete: (() -> Void)? { get set }
}

extension ShowProtocol {
    public func addOnComplete(_ onComplete: @escaping () -> Void) -> some View {
        ShowWrapper(self, onComplete: onComplete)
    }
}

//This is only to wrap onComplete to called
private struct ShowWrapper<T: ShowProtocol>: View {
    var wrappedView: T

    init(_ view: T, onComplete: @escaping () -> Void) {
        self.wrappedView = view
        self.wrappedView.onComplete = onComplete
    }

    var body: some View {
        wrappedView
    }
}
