//
//  ShowManager.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import Foundation
import SwiftUI

public class ShowManager: ObservableObject {
    @Published var completedScreens: Set<String> = []
    
    func markCompleted(_ id: String) {
        completedScreens.update(with: id)
    }
    
    func isCompleted(_ id: String) -> Bool {
        completedScreens.contains(id)
    }
}

public struct ShowManagerKey: EnvironmentKey {
    nonisolated(unsafe) public static let defaultValue: ShowManager = ShowManager()
}

extension EnvironmentValues {
    var showManager: ShowManager {
        get { self[ShowManagerKey.self] }
        set { self[ShowManagerKey.self] = newValue }
    }
}
