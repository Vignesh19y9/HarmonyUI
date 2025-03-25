//
//  FeedbackSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI
import UIKit

extension UIDevice {
    static func modelIdentifier() -> String {
        if let simulatorModelIdentifier = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
            return simulatorModelIdentifier + "/simulator"
        }
        var sysinfo = utsname()
        uname(&sysinfo)
        return String(bytes: Data(bytes: &sysinfo.machine, count: Int(_SYS_NAMELEN)),
                      encoding: .ascii)?.trimmingCharacters(in: .controlCharacters) ?? UIDevice.current.model
    }
}


public struct FeedbackSection: View {
    @Environment(\.settingsData) public var settingsData
    let items: [AnyView]
    
    public init(items: [AnyView] = [
        AnyView(ReviewButton()),
        AnyView(ShareButton()),
        AnyView(FeedBackButton()),
        AnyView(ContactUsButton())
    ]) {
        self.items = items
    }
    
    public var body: some View {
        SettingsSection(title: "Feedback", items: items)
    }
}

#Preview {
    FeedbackSection()
}
