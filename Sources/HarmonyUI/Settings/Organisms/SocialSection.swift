//
//  SocialSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SocialSection: View {
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(
            SocialButton(icon: "twitter-ic", url: "https://twitter.com/Vignesh_ey")
        ),
        AnyView(
            SocialButton(icon: "linkedin-ic", url: "https://twitter.com/Vignesh_ey")
        )
    ]) {
        self.items = items
    }

    public var body: some View {
        HStack {
            Spacer()
            ForEach(items.indices, id: \.self) { index in
                items[index]
            }
            Spacer()
        }
    }
}

#Preview {
    SocialSection()
}
