//
//  AppCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 15/01/26.
//

import UIKit
import SwiftUI

final class AppCoordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let contentVC = UIHostingController(rootView: TabBar())
        window.rootViewController = contentVC
        window.makeKeyAndVisible()
    }
}
