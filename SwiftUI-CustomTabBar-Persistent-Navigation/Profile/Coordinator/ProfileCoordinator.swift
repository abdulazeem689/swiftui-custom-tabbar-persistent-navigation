//
//  ProfileCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 22/01/26.
//

import SwiftUI

final class ProfileCoordinator: BaseCoordinator {
    override func start() {
        let profile = ProfileView()
        set(profile)
    }
}
