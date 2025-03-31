//
//  SettingsSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsSection: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    
    let title: String
    let items: [AnyView]
    
    var shouldStyle: Bool {
        !title.isEmpty
    }

    public init(title: String, items: [AnyView]) {
        self.title = title
        self.items = items
    }

    public var body: some View {
        if !items.isEmpty {
            VStack (alignment: .leading) {
                if shouldStyle {
                    Heading(title, style: .title5)
                }
                
                VStack {
                    ForEach(items.indices, id: \.self) { index in
                        items[index]
                        
                        if index < items.count - 1 {
                            Divider()
                        }
                    }
                }
                .padding(shouldStyle ? appTheme.spacing.medium : 0)
                .background {
                    if shouldStyle {
                        appTheme.colors.white.darker
                            
                    }
                }
                .cornerRadius(appTheme.corners.small)
                .elevation(appTheme.elevation.level2)
            }
        }
    }
}

#Preview {
    SettingsSection(title: "Settings", items: [
        AnyView(Text("Item 1")),
        AnyView(Text("Item 2")),
    ])
    .environmentObject(DefaultAppTheme())
}
