//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct SocialButton: View {
    @Environment(\.openURL) var openURL
    let icon: String?
    let url: String?
    
    public init(icon: String?, url: String?) {
        self.icon = icon
        self.url = url
    }

    public var body: some View {
        if let url, let icon {
            Button(action: { openURL(URL(string: url)!) }) {
                Image(icon, bundle: .module)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
        }
    }
}


#Preview {
    SocialButton(icon: "twitter-ic", url: "https://twitter.com/Vignesh_ey")
}
