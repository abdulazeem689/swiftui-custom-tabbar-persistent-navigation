//
//  Coordinator+Host.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 23/01/26.
//

import SwiftUI

struct HostView: UIViewControllerRepresentable {
    let coordinator: Coordinator
    
    func makeUIViewController(context: Context) -> UIViewController {
        coordinator.navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
