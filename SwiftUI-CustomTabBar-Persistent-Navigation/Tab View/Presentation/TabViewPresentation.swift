//
//  TabViewPresentation.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

// MARK: - Tabs

extension Tabview {
    enum Tab: CaseIterable {
        case home
        case profile
        
        /// represents states of the tab.
        enum State {
            case selected
            case unselcted
            
            init(if boolValue: Bool) {
                self = boolValue ? .selected : .unselcted
            }
        }
        
        /// represents tab name
        var name: String {
            switch self {
            case .home: "Home"
            case .profile: "Profile"
            }
        }
        
        /// represents unselected tab icon.
        var unselectedIcon: Icon.System {
            switch self {
            case .home: .home
            case .profile: .profile
            }
        }
        
        /// represents selected tab icon.
        var selectedIcon: Icon.System {
            switch self {
            case .home: .homeFill
            case .profile: .profileFill
            }
        }
        
        /// returns tab icon.
        func icon(for state: State) -> String {
            switch state {
            case .selected:
                return selectedIcon.name
            case .unselcted:
                return unselectedIcon.name
            }
        }
        
        /// returns tab foreground style.
        func foreground(for state: State) -> Color {
            switch state {
            case .selected:
                return .accentColor
            case .unselcted:
                return .gray
            }
        }
    }
}
