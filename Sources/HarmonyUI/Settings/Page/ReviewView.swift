//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI
import StoreKit

public struct ReviewView: View {
    @Environment(\.settingsData) public var settingsData
    @Environment(\.dismiss) var dismiss
    
    private let starCount = 5
    @State private var flipAngle = Double.zero
    
    public var body: some View {
        VStack {
            Spacer()
            content
            Spacer()
        }
    }
    
    private var content: some View {
        VStack {
            VStack(spacing: 0) {
                Text("Hey Buddy,")
                    .fontWeight(.bold)
                
                Text("Enjoying")
                +
                Text(" \(settingsData.appName) ")
                    .fontWeight(.bold)
                +
                Text("So far?")
            }
            
            smileyView
            
            starView
            
            VStack(spacing: 0) {
                Text("We are is in the early stage!")
                
                Text("Your 5★ rating means a lot to us.")
                    .multilineTextAlignment(.center)
            }
            createButton
        }
    }
    
    @ViewBuilder
    private var smileyView: some View {
        VStack {
            Image("StarSmile", bundle: .module)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    private var starView: some View {
        HStack(spacing: 0) {
            ForEach(0..<starCount, id: \.self) { index in
                Image(systemName: "star.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 30)
                    .scaleEffect(starScale(for: index))
                    .rotation3DEffect(.degrees(flipAngle),
                                      axis: (x: 1, y: 0, z: 0))
                    .animation(.default.delay(Double(index) * 0.1),
                               value: flipAngle)
            }
        }
        .foregroundColor(.yellow)
        .onAppear {
            flipStars()
        }
    }
    
    private var createButton: some View {
        Button(action: onContinueTapped) {
            Text("Let's do it")
                .fontWeight(.bold)
        }
    }
    
    // MARK: - Actions
    private func onContinueTapped() {
        flipStars()
        requestReview()
    }
    
    private func requestReview() {
        if let windowScene = UIApplication.shared.keywindow?.windowScene {
            SKStoreReviewController.requestReview(in: windowScene)
        }
    }
    
    private func flipStars() {
        flipAngle = (flipAngle == .zero) ? 360 : .zero
    }
    
    private func starScale(for index: Int) -> CGFloat {
        let center = Double(starCount - 1) / 2
        let distanceFromCenter = abs(Double(index) - center)
        return CGFloat(1.5 - (distanceFromCenter * 0.3))
    }
}


#Preview {
    return ReviewView()
}

extension UIApplication {
    var keywindow: UIWindow? {
        return self.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .first(where: { $0 is UIWindowScene })
            .flatMap({ $0 as? UIWindowScene })?.windows
            .first(where: \.isKeyWindow)
    }
    
    var keyWindowPresentedController: UIViewController? {
        var viewController = self.keyWindow?.rootViewController
        if let presentedController = viewController as? UITabBarController {
            viewController = presentedController.selectedViewController
        }
        
        while let presentedController = viewController?.presentedViewController {
            if let presentedController = presentedController as? UITabBarController {
                viewController = presentedController.selectedViewController
            } else {
                viewController = presentedController
            }
        }
        return viewController
    }
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
