//
//  TabViewPresentation.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

// MARK: - Tabs

extension Tabview {
    enum Tab: CaseIterable {
        case home
        case settings
        
        /// represents tab icon.
        var icon: Icon.System {
            switch self {
            case .home: .home
            case .settings: .settings
            }
        }
        
        // represents tab name
        var name: String {
            switch self {
            case .home: "Home"
            case .settings: "Settings"
            }
        }
    }
}
