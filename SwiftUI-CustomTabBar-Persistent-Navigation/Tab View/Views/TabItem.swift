//
//  CustomTabItem.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

struct TabItem: View {
    let tab: Tabview.Tab
    var body: some View {
        VStack {
            Image(systemName: tab.icon.name)
            Text(tab.name)
        }
    }
}

#Preview {
    TabItem(tab: .home)
}
