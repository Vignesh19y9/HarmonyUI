//
//  TabLoadedView.swift
//  HarmonyUI
//
//  Created by Vignesh V on 24/03/25.
//

import SwiftUI

public protocol TabLoadableView: View {
    var binding: Binding<Bool> { get }
}

public struct TabLoadedView: TabLoadableView {
    public var data: TabOnboardData
    public var binding: Binding<Bool> {
        $loaded
    }
    @Binding var loaded: Bool
    
    public init(loaded: Binding<Bool>, data: TabOnboardData) {
        self.data = data
        self._loaded = loaded
    }
    
    public var body: some View {
        VStack {
            Text(data.title)
                .font(.title)
            Text(data.text)
        }
        .onAppear {
            loaded = false
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                loaded = true
            }
        }
    }
}

#Preview {
    TabLoadedView(loaded: .constant(true), data: .init(title: "Title",
                                                       text: "Text"))
}
