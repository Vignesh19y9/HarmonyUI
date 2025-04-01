//
//  ClearDefaults.swift
//  HarmonyUI
//
//  Created by Vignesh V on 31/03/25.
//

import Foundation

extension UserDefaults {
    func resetUser(){
        UserKeys.allKeys.forEach{
            removeObject(forKey: $0)
        }
        
        synchronize()
    }
}
