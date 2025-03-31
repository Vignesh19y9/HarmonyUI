//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import SwiftUI

public extension View {
    func expand() -> some View {
        self.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

