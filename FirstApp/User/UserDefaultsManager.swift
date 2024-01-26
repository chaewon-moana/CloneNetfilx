//
//  User.swift
//  FirstApp
//
//  Created by cho on 1/26/24.
//

import Foundation

struct UserDefaultsManager {
    
    private init() { }
    
    static let shared = UserDefaultsManager()
    
    let ud = UserDefaults.standard
    
    enum User: String {
        case name
    }
    
    var name: String {
        get {
            ud.string(forKey: User.name.rawValue) ?? "닉네임"
        }
        set {
            ud.set(newValue, forKey: User.name.rawValue)
        }
    }
    
    
}
