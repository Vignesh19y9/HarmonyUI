//
//  ShowProtocol.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public protocol ShowProtocol: View {
    var id: UUID { get }
    var shouldShow: Bool { get set }
    var showManager: ShowManager { get }
    
    var onComplete: (() -> Void)? { get set }
    func performOnComplete()
}

public extension ShowProtocol {
    func performOnComplete() {
        (onComplete ?? { showManager.markCompleted(id.uuidString) })()
    }
}
