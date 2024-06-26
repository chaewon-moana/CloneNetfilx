//
//  User.swift
//  FirstApp
//
//  Created by cho on 1/26/24.
//

import Foundation

class UserDefaultsManager {
    
    private init() { }
    
    static let shared = UserDefaultsManager()
    
    let ud = UserDefaults.standard
    
    enum User: String {
        case name
    }
    
    var name: String {
        get {
            ud.string(forKey: User.name.rawValue) ?? "닉네임입력요망"
        }
        set {
            ud.set(newValue, forKey: User.name.rawValue)
        }
    }
    
    
}
