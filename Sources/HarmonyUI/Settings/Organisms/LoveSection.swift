//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct LoveSection: View {
    let string: String
    
    init(string: String = "Made with ❤️ by vignesh") {
        self.string = string
    }
    
    public var body: some View {
        Text(string)
            .font(.caption)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity)
    }
}

#Preview {
    LoveSection()
}
