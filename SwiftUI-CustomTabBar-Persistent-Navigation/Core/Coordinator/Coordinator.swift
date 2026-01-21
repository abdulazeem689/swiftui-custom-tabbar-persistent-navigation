//
//  Coordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 19/01/26.
//

import UIKit

protocol Coordinator: AnyObject {
    var parent: Coordinator? { get set }
    
    var children: [Coordinator] { get set }
    
    var navigationController: UINavigationController { get set }
    
    func start()
    
    func stop()
}
