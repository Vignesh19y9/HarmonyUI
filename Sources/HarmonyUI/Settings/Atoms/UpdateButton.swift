//
//  UpdateButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct UpdateButton: View {
    let title: String
    let icon: String?
    let url: String?
    
    @State var showUpdate: Bool = false
    @State var updateAvailable: Bool = true
    
    public init(title: String = "Upgrade Available",
                icon: String? = "star.fill",
                url: String? = nil) {
        
        self.title = title
        self.icon = icon
        self.url = url
    }
    
    public var body: some View {
        if updateAvailable {
            Button(action: { showUpdate.toggle() }) {
                HStack {
                    if let icon = icon {
                        Image(systemName: icon)
                            .frame(width: 24, height: 24)
                    }
                    Text(title)
                        .foregroundColor(.primary)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
            }
            .sheet(isPresented: $showUpdate) {
                UpdateAvailableView(
                    updateAction: {
                        showUpdate = false
                    },
                    laterAction: {
                        showUpdate = false
                    })
            }
        }
    }
}


#Preview {
    ShareButton(title: "Title",
                icon: "")
}
