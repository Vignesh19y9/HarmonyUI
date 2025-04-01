// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import UIKit

public struct HarmonyUI {
    
    static public func start() {
        //Initial value only reliable will change when scheme is changed.
        Appearance.defaultScheme = UITraitCollection.current.userInterfaceStyle == .dark ? .dark : .light
    }
}
