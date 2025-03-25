//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct ReviewButton: View {
    @Environment(\.settingsData) public var settingsData
    @State public var showReview = false
    
    let title: String
    let icon: String
    
    public init(title: String = "Rate Us",
                icon: String = "star") {
        
        self.title = title
        self.icon = icon
    }

    public var body: some View {
        SettingsButton(title: title, icon: icon) {
            showReview.toggle()
        }
        .sheet(isPresented: $showReview) {
        }
    }
}

#Preview {
    ReviewButton()
}
