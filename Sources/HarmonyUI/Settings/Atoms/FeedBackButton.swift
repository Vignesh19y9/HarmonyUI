//
//  FeedBackButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct FeedBackButton: View {
    @Environment(\.settingsData) public var settingsData
    @State public var showFeedBack = false
    
    let title: String
    let icon: String?
    let email: String
    
    var feedBackModel: MailModel {
        MailModel(
            email: email,
            noSupportText: "You need to set a mail account in order to leave a feedback",
            contentPreText: "Hello \(settingsData.appName), I would like a feature of...",
            sendButtonText: "Give Feedback",
            subject: "Feature request for \(settingsData.appName)"
        )
    }
    
    public init(title: String = "Request a Feature",
                icon: String? = "lightbulb",
                email: String = "contact@robzapps.com") {
        
        self.title = title
        self.email = email
        self.icon = icon
    }

    public var body: some View {
        SettingsButton(title: title, icon: icon) {
            showFeedBack.toggle()
        }
        .sheet(isPresented: $showFeedBack) {
            MailView(model: feedBackModel)
        }
    }
}

#Preview {
    FeedBackButton(title: "Request a Feature")
}
