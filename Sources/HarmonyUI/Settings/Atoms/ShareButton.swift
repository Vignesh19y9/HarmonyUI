//
//  ShareButton.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI

public struct ShareButton: View {
    let title: String
    let icon: String?
    let url: String?
    
    @State var showShare: Bool = false
    
    public init(title: String = "Share App",
                icon: String? = "square.and.arrow.up",
                url: String? = nil) {
        
        self.title = title
        self.icon = icon
        self.url = url
    }
    
    public var body: some View {
        SettingsButton(title: title, icon: icon, action: {
            if let url {
                showShare.toggle()
            }
        })
        .sheet(isPresented: $showShare) {
            ActivityView(activityItems:[url])
        }
    }
}


#Preview {
    ShareButton(title: "Title",
                icon: "")
}

struct ActivityView: UIViewControllerRepresentable {
    var activityItems: [Any]
    var applicationActivities: [UIActivity]? = nil
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ActivityView>) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: UIViewControllerRepresentableContext<ActivityView>) {
        
    }
}
