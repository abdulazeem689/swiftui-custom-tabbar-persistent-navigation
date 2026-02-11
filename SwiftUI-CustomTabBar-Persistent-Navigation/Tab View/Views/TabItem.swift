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
        VStack(alignment: .center, spacing: .zero) {
            Spacer()
            Image(systemName: tab.icon(for: state))
                .resizable()
                .aspectRatio(contentMode: .fit)
            if tab.name != "" {
                Text(tab.name)
                    .font(.caption2)
            }
        }
        .foregroundStyle(tab.foreground(for: state))
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabItem(tab: .home, state: .unselcted)
}
