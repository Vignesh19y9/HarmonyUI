//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 29/03/25.
//

import SwiftUI

public struct DotIndicatorView: View {
    let numberOfDots: Int
    let currentIndex: Int
    
    public init(dots: Int, index: Int) {
        self.numberOfDots = dots
        self.currentIndex = index
    }
    
    public var body: some View {
        HStack {
            ForEach(0 ..< numberOfDots, id: \.self) { index in
                Capsule()
                    .fill(.blue.opacity(index == currentIndex ? 1 : 0.5))
                    .frame(width: index == currentIndex ? 20 : 10, height: 10)
                    .transition(.slide)
                    .animation(.easeInOut, value: currentIndex)
            }
        }
        .padding()
    }
}
