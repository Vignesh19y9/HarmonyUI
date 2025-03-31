//
//  PermissionsShowProtocol.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultPermissionsView: PermissionsShowProtocol {
    @Environment(\.showManager) public var showManager
    @AppStorage(UserKeys.permissionGranted.key) public var hasPermission = false
    
    public var id: UUID = UUID()
    public var shouldShow: Bool { !hasPermission }
    public var onComplete: (() -> Void)?
    
    public init(onComplete: (() -> Void)? = nil) {
        self.onComplete = onComplete
    }
    
    public var body: some View {
        VStack {
            Text("Grant Permissions")
                .font(.title)
                .padding()
            Button("Allow") {
                performOnComplete()
                hasPermission = true
            }
        }
        .expand()
        .themeBackground()
    }
}
