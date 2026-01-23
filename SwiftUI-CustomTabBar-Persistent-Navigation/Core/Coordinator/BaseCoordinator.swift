//
//  BaseCoordinator.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 19/01/26.
//

import SwiftUI

class BaseCoordinator: Coordinator {
    weak var parent: (any Coordinator)?
    var children: [any Coordinator] = []
    var navigationController = UINavigationController()
    
    /// Starts the coordinator's navigation flow.
    ///
    /// Subclasses must override this method to set up and present the initial view
    /// for their flow, typically by pushing or presenting a SwiftUI view using the
    /// provided navigation helpers (e.g., `push(view:)` or `present(view:)`).
    ///
    /// Calling the base implementation will result in a runtime error.
    func start() {
        fatalError("Subclasses must override `start()`")
    }
    
    /// Call this function to start a new coordinator.
    func start(_ coordinator: any Coordinator) {
        add(child: coordinator)
        coordinator.navigationController = navigationController
        coordinator.start()
    }
    
    func add(child coordinator: any Coordinator) {
        coordinator.parent = self
        children.append(coordinator)
    }
    
    /// Call this function to close and finish the coordinator.
    func stop() {
        // dismiss/pop the view
        close()
        
        // remove the coordinator from parent.
        finish()
    }
    
    /// Closes the coordinator's navigation flow.
    ///
    /// Subclasses must override this method to cleanly end their flow by
    /// dismissing or popping any presented view controllers using the
    /// provided navigation helpers (e.g., `pop()`, `pop(to:)`  or `dismiss()`).
    /// This typically pairs with `start()` and should leave navigation in a consistent state.
    ///
    /// Calling the base implementation will result in a runtime error.
    func close() {
        fatalError("Subclasses must override `close()`")
    }
    
    func finish() {
        parent?.children.removeAll { $0 === self }
    }
}

// MARK: - Navigation functions.

extension BaseCoordinator {
    func ViewController<T: View>(with view: T) -> UIHostingController<T> {
        UIHostingController(rootView: view)
    }
    func set<T: View>(_ views: T...) {
        let viewControllers = views.map { ViewController(with: $0) }
        navigationController.setViewControllers(viewControllers, animated: true)
    }
    
    func push<T: View>(view: T) {
        let viewController = ViewController(with: view)
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func pop() {
        navigationController.popViewController(animated: true)
    }
    
    func pop<T: View>(to viewType: T.Type) {
        guard let viewController = navigationController.viewControllers.last(where: { $0 is UIHostingController<T> })
        else { return }
        navigationController.popToViewController(viewController, animated: true)
    }
    
    func popToRoot() {
        navigationController.popToRootViewController(animated: true)
    }
    
    func present<T: View>(view: T) {
        let viewController = ViewController(with: view)
        navigationController.present(viewController, animated: true)
    }
    
    func dismiss() {
        navigationController.dismiss(animated: true)
    }
}

