//
//  Heading.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public struct HeadingView: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let style: Style
    let string: String
    
    public enum Style: Equatable, Sendable {
        /// 28 pts.
        case title1
        /// 22 pts.
        case title2
        /// 18 pts.
        case title3
        /// 16 pts.
        case title4
        /// 15 pts.
        case title5
        /// 13 pts.
        case title6
    }
    
    public init(_ string: String, style: Style = .title1) {
        self.string = string
        self.style = style
    }
    
    public var body: some View {
        Text(string)
            .font(font.font.weight(weight))
            .lineSpacing(font.lineHeight - font.size)
            .accessibility(addTraits: .isHeader)
    }
    
    public var font: CFont {
        switch style {
        case .title1:
            return appTheme.typography.title1
        case .title2:
            return appTheme.typography.title2
        case .title3:
            return appTheme.typography.title3
        case .title4:
            return appTheme.typography.title4
        case .title5:
            return appTheme.typography.title5
        case .title6:
            return appTheme.typography.title6
        }
    }
    
    public var weight: Font.Weight {
        switch style {
        case .title1, .title4, .title5, .title6:    return .bold
        case .title2, .title3:                      return .medium
        }
    }
}

#Preview {
    VStack(alignment: .leading) {
        HeadingView("Heading is a test to see the working", style: .title1)
        HeadingView("Heading is a test to see the working", style: .title2)
        HeadingView("Heading is a test to see the working", style: .title3)
        HeadingView("Heading is a test to see the working", style: .title4)
        HeadingView("Heading is a test to see the working", style: .title5)
        HeadingView("Heading is a test to see the working", style: .title6)
    }
    .environmentObject(DefaultAppTheme())
}
