//
//  Icons.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

enum Icon {
    /// represents system icon.
    enum System: String {
        case home = "house"
        case settings = "gear"
        
        var name: String {
            self.rawValue
        }
    }
    
    /// represents asset icon.
    enum Asset {}
}
