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
        VStack(spacing: .space4) {
            Image(systemName: tab.icon.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: .size24)
            Text(tab.name)
                .font(.caption)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabItem(tab: .home)
}
