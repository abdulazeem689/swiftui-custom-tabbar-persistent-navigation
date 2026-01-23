//
//  TabContainerView.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 23/01/26.
//

import SwiftUI

struct TabContainerView: View {
    let home: HostView
    let profile: HostView
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabBar()
        }
    }
}

#Preview {
    TabContainerView(home: HostView(coordinator: HomeCoordinator()),
                     profile: HostView(coordinator: ProfileCoordinator()))
}
