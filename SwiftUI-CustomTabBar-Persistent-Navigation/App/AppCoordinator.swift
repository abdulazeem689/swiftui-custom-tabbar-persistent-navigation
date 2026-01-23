//
//  AppCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 15/01/26.
//

import UIKit
import SwiftUI

final class AppCoordinator: BaseCoordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let tabBarCoordinator = TabBarCoordinator(with: navigationController)
        start(tabBarCoordinator)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
