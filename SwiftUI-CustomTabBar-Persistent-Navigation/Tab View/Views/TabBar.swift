//
//  CustomTabBar.swift
//  SwiftUI-CustomTabBar-Persistent-Navigation
//
//  Created by Abdul Azeem on 18/01/26.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack {
            ForEach(Tab.allCases, id: \.self) { tab in
                TabItem(tab: tab)
            }
        }
    }
}

#Preview {
    TabBar()
}
