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
    
    @ObservedObject var viewModel = TabViewModel()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch viewModel.selectedTab {
            case .home:
                homeHost
            case .profile:
                profileHost
            default:
                homeHost
            }
            
            TabBar(selectedTab: viewModel.selectedTab, onSelect: viewModel.onSelect)
        }
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

#Preview {
    Tabview(homeHost: HostView(coordinator: HomeCoordinator()),
            profileHost: HostView(coordinator: ProfileCoordinator()))
}
