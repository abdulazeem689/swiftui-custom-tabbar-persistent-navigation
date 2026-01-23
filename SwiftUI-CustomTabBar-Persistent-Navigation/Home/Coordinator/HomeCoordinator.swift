//
//  HomeCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 22/01/26.
//

import SwiftUI

final class HomeCoordinator: BaseCoordinator {
    override func start() {
        let home = HomeView()
        set(home)
    }
}
