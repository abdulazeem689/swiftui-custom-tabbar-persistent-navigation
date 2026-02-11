//
//  CustomTabBar.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

struct TabBar: View {
    let selectedTab: Tab
    let onSelect: (Tab) -> Void
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(Tab.allCases, id: \.self) { tab in
                Button(action: { onSelect(tab) }) {
                    TabItem(
                        tab: tab,
                        state: Tab.State(if: selectedTab == tab))
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.top, .space12)
        .padding(.bottom, .space20)
        .background(.regularMaterial)
    }
}

#Preview {
    TabBar(selectedTab: .home, onSelect: { _ in })
}

