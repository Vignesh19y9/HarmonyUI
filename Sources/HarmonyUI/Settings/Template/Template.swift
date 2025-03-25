//
//  Template.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsTemplate: View {
    let sections: [AnyView]

    public var body: some View {
        NavigationView {
            List {
                ForEach(sections.indices, id: \.self) { index in
                    sections[index]
                }
            }
            .navigationTitle("Settings")
        }
    }
}


#Preview {
    SettingsTemplate(sections: [])
}

