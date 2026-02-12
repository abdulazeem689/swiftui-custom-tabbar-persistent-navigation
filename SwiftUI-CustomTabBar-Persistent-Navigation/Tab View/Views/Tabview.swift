//
//  TabContainerView.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 23/01/26.
//

import SwiftUI

struct Tabview: View {
    let homeHost: HostView
    let profileHost: HostView
    
    @State var selectedTab = Tab.home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch selectedTab {
            case .home:
                homeHost
            case .profile:
                profileHost
            default:
                homeHost
            }
            
            TabBar(selectedTab: selectedTab, onSelect: onSelect)
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

// MARK: - Functions

extension Tabview {
    private func onSelect(tab: Tab) {
        if tab == .createPost {
            return
        }
        selectedTab = tab
    }
}

#Preview {
    Tabview(homeHost: HostView(coordinator: HomeCoordinator()),
            profileHost: HostView(coordinator: ProfileCoordinator()))
}
