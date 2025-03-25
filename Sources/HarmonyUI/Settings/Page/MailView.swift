//
//  File.swift
//  HarmonyUI
//
//  Created by Vignesh V on 25/03/25.
//

import Foundation
import SwiftUI
import MessageUI

struct MailModel{
    var email: String
    let noSupportText: String
    let contentPreText: String
    let sendButtonText: String
    let subject: String
}

struct MailView : UIViewControllerRepresentable{
    
    var content: String
    var to: String
    var subject: String
    
    typealias UIViewControllerType = MFMailComposeViewController
    
    init(content: String, to: String, subject: String) {
        self.content = content
        self.to = to
        self.subject = subject
    }
    
    init(model: MailModel) {
        self.content = model.contentPreText
        self.to = model.email
        self.subject = model.subject
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: Context) {
    }
    
    func makeUIViewController(context: Context) -> MFMailComposeViewController {
        if MFMailComposeViewController.canSendMail(){
            let view = MFMailComposeViewController()
            
            view.mailComposeDelegate = context.coordinator
            view.setToRecipients([to])
            view.setSubject(subject)
            view.setMessageBody(content, isHTML: false)
            view.setMessageBody(content, isHTML: false)
            return view
        } else {
            return MFMailComposeViewController()
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    
    class Coordinator : NSObject, @preconcurrency MFMailComposeViewControllerDelegate{
        
        var parent : MailView
        
        init(_ parent: MailView){
            self.parent = parent
        }
        
        @MainActor func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            controller.dismiss(animated: true)
        }
    }
}
