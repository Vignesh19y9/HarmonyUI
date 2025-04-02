//
//  PremiumSection.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import SwiftUI

public struct PremiumSection: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let items: [AnyView]

    public init(items: [AnyView] = [
        AnyView(DefaultPremiumSettingsCard())
    ]) {
        self.items = items
    }

    public var body: some View {
        SettingsSection(title: "", items: items)
    }
}

public struct DefaultPremiumSettingsCard: View {
    @EnvironmentObject var appTheme: DefaultAppTheme
    let title: String
    let subTitle: String
    
    public init(title: String = "Upgrade to Premium",
                subTitle: String = "Get unlimited acess") {
        self.title = title
        self.subTitle = subTitle
    }
    
    public var body: some View {
        VStack(alignment: .leading,
               spacing: appTheme.spacing.small) {
            
            HStack {
                Image(systemName: "crown.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                
                HeadingView(title, style: .title2)
                
                Spacer()
            }
            
            HStack {
                HeadingView(subTitle, style: .title3)
                
                Spacer()
                
                Button("Go Pro Todo") {
                    
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .padding(appTheme.spacing.medium)
        .background {
            LinearGradient(
                colors: [
                    appTheme.colors.product.lightHover,
                    appTheme.colors.product.lightActive
                ],
                startPoint: .leading,
                endPoint: .top
            )
        }
        .cornerRadius(appTheme.corners.small)
    }
}

#Preview {
    PremiumSection()
        .environmentObject(DefaultAppTheme())
}
//SettingsButton(title: "Upgrade to Premium", icon: "star.fill") {
//    print("Upgrade to Premium")
//}
