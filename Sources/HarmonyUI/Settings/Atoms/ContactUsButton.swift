//
//  ContactUsButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI

public struct ContactUsButton: View {
    @Environment(\.settingsData) public var settingsData
    @State public var showContactUs = false
    
    let title: String
    let icon: String?
    let email: String
    
    var contactUSModel: MailModel {
        MailModel(
            email: email,
            noSupportText: "You need to set a mail account in order to leave a feedback",
            contentPreText: """
                    App Name: \(settingsData.appName)
                    App Version: \(settingsData.appVersion)
                    Premium: \(settingsData.isPremium)
                    Language: \(Locale.preferredLanguages.first ?? "")
                    Device Model: \(UIDevice.modelIdentifier())
                    iOS Version: \(UIDevice.current.systemVersion)
                    
                    Hello \(settingsData.appName), I am writing to you about...
                    """,
            sendButtonText: "Support",
            subject: "Support related to \(settingsData.appName)"
        )
    }
    
    public init(title: String = "Contact Us",
                icon: String? = "envelope",
                email: String = "contact@robzapps.com") {
        
        self.title = title
        self.email = email
        self.icon = icon
    }

    public var body: some View {
        SettingsButton(title: title, icon: icon) {
            showContactUs.toggle()
        }
        .sheet(isPresented: $showContactUs) {
            MailView(model: contactUSModel)
        }
    }
}

#Preview {
    ContactUsButton(title: "Contact Us")
}
