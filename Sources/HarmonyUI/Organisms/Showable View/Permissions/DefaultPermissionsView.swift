//
//  PermissionsShowProtocol.swift
//  HarmonyUI
//
//  Created by Vignesh V on 23/03/25.
//

import SwiftUI

public struct DefaultPermissionsView: PermissionsShowProtocol {
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
                onComplete?()
            }
        }
    }
}
