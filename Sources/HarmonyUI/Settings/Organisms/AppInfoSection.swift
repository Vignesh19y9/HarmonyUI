//
//  AppInfoSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct AppInfoSection: View {
    @Environment(\.settingsData) public var settingsData
    
    public var body: some View {
        VStack {
            Text("\(settingsData.appName)  v \(settingsData.appVersion) (\(settingsData.buildNumber))")
                .font(.caption)
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    AppInfoSection()
}
