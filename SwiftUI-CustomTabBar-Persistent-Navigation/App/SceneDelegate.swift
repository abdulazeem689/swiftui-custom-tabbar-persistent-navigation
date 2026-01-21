//
//  SceneDelegate.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 14/01/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions)
    {
        print("SceneDelegate started")

        guard let windowScene = scene as? UIWindowScene else { return }
        
        let window = UIWindow(windowScene: windowScene)
        self.window = window   // 💥 KEEP STRONG REFERENCE
        
        let coordinator = AppCoordinator(window: window)
        self.appCoordinator = coordinator // optional (nice to keep alive)
        
        coordinator.start()
    }
}
