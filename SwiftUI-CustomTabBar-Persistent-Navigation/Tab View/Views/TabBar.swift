//
//  CustomTabBar.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedTab: Tabview.Tab
    
    var body: some View {
        HStack {
            ForEach(Tabview.Tab.allCases, id: \.self) { tab in
                Button(action: { selectedTab = tab }) {
                    TabItem(tab: tab)
                }
            }
        }
        .padding(.top, .space12)
        .background(.ultraThinMaterial)
    }
}

#Preview {
    TabBar(selectedTab: .constant(.home))
}

