//
//  CustomTabItem.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

struct TabItem: View {
    let tab: Tab
    let state: Tab.State
    
    var body: some View {
        VStack(alignment: .center, spacing: .space4) {
            Image(systemName: tab.icon(for: state))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: .size24)
            Text(tab.name)
                .font(.caption)
        }
        .foregroundStyle(tab.foreground(for: state))
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabItem(tab: .home, state: .unselcted)
}
