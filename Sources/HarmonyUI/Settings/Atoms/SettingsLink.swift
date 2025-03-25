//
//  SettingsLink.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsLink: View {
    let title: String
    let icon: String?
    let url: String
    
    public init(title: String,
                icon: String?,
                url: String) {
        
        self.title = title
        self.url = url
        self.icon = icon
    }

    public var body: some View {
        SettingsButton(title: title, icon: icon) {
            if let link = URL(string: url) {
                UIApplication.shared.open(link)
            }
        }
    }
}

#Preview {
    SettingsLink(title: "SettingsLink",
                 icon: "",
                 url: "")
}
