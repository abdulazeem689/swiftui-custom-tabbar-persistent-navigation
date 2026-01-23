//
//  TabBarCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 23/01/26.
//

final class TabBarCoordinator: BaseCoordinator {
    override func start() {
        let homeCoordinator = HomeCoordinator()
        start(homeCoordinator)
        
        let profileCoordinator = ProfileCoordinator()
        start(profileCoordinator)
        
        let homeView = HostView(coordinator: homeCoordinator)
        let profileView = HostView(coordinator: homeCoordinator)
        
        let tabView = TabContainerView(
            home: homeView,
            profile: profileView
        )
        
        set(tabView)
    }
}
