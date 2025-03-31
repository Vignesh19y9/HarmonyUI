//
//  Texts.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct Texts: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let size: Size
    let string: String
    let weight: Font.Weight
    
    public enum Size: Equatable {
        /// 13 pts.
        case small
        /// 15 pts.
        case normal
        /// 16 pts.
        case large
        /// 18 pts.
        case xLarge
    }
    
    public init(_ string: String, size: Size = .normal, weight: Font.Weight = .regular) {
        self.string = string
        self.size = size
        self.weight = weight
    }
    
    public var body: some View {
        Text(string)
            .font(font.font.weight(weight))
            .lineSpacing(font.lineHeight - font.size)
            .accessibility(addTraits: .isHeader)
    }
    
    public var font: CFont {
        switch size {
        case .small:
            return appTheme.typography.textSmall
        case .normal:
            return appTheme.typography.textNorml
        case .large:
            return appTheme.typography.textLarge
        case .xLarge:
            return appTheme.typography.textXLarg
        }
    }
}

#Preview {
    VStack(alignment: .leading, spacing: 20) {
        Text("Normal")
        VStack(alignment: .leading) {
            Texts("Texts is a test to see the working", size: .small)
            Texts("Texts is a test to see the working", size: .normal)
            Texts("Texts is a test to see the working", size: .large)
            Texts("Texts is a test to see the working", size: .xLarge)
        }
        
        Text("Medium")
        VStack(alignment: .leading) {
            Texts("Texts is a test to see the working", size: .small, weight: .medium)
            Texts("Texts is a test to see the working", size: .normal, weight: .medium)
            Texts("Texts is a test to see the working", size: .large, weight: .medium)
            Texts("Texts is a test to see the working", size: .xLarge, weight: .medium)
        }
        
        Text("Medium")
        VStack(alignment: .leading) {
            Texts("Texts is a test to see the working", size: .small, weight: .bold)
            Texts("Texts is a test to see the working", size: .normal, weight: .bold)
            Texts("Texts is a test to see the working", size: .large, weight: .bold)
            Texts("Texts is a test to see the working", size: .xLarge, weight: .bold)
        }
    }
    .environmentObject(DefaultAppTheme())
    
    
}
