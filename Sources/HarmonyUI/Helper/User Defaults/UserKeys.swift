//
//  UserKeys.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation

public enum UserKeys: String, CaseIterable, Sendable {
    case appearance = "USER_APPEARANCE"
    case hasOnboarded = "USER_ONBOARDED"
    case walkthroughDone = "USER_WALKTHROUGH"
    case permissionGranted = "USER_PERMISSION_GRANTED"

    public static let additionalKeys: [String] = []

    public static var allKeys: [String] {
        return allCases.map(\.rawValue) + additionalKeys
    }

    public var key: String {
        return rawValue
    }
}
