//
//  Template.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SettingsTemplate: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let sections: [AnyView]

    public var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVStack(alignment: .leading) {
                    ForEach(sections.indices, id: \.self) { index in
                        sections[index]
                    }
                    .padding(.vertical, appTheme.spacing.xsmall)
                }
                .padding(.horizontal, appTheme.spacing.medium)
                .navigationTitle("Settings")
            }
            .themeBackground()
        }
    }
}


#Preview {
    SettingsTemplate(sections: [])
}

extension List {
    /// Hides the default background of `List` for all iOS versions
    func hideBackground() -> some View {
        if #available(iOS 16.0, *) {
            return self.scrollContentBackground(.hidden)
        } else {
            UITableView.appearance().backgroundColor = .clear
            return self
        }
    }
}
