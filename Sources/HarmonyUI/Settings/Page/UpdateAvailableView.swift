//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI

struct UpdateAvailableView: View {
    let appName: String = "Test app"
    let releaseNote: String
    
    let updateAction: () -> Void
    let laterAction: () -> Void
    
    init(releaseNote: String = "",
         updateAction: @escaping () -> Void,
         laterAction: @escaping () -> Void) {
        
        self.releaseNote = releaseNote
        self.updateAction = updateAction
        self.laterAction = laterAction
    }
    
    var body: some View {
        VStack {
            Text("Update Available!")
                .fontWeight(.bold)
            
            Text("A new version of \(appName) is released on the App Store. Update to get the newest features.")
            
            if !releaseNote.isEmpty {
                Text(releaseNote)
            }
            
            Button(action: {
                updateAction()
            }) {
                Text("Update Now")
            }
            
            Button(action: {
                laterAction()
            }) {
                Text("Later")
            }
        }
        .cornerRadius(12)
        .frame(width: 300)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.6))
    }
}

#Preview {
    UpdateAvailableView(updateAction: {},
                        laterAction: {})
}
